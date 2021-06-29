function testFIS_2()

clc
clear all
close all

initGlobalData;

global mws;
mws.io.flogid = 1;

filename = 'iris';
tic;
printMessage(1, 'Начало обработки задачи кластеризации %s', filename);

[x, t] = iris_dataset;
c = vec2ind(t);
% net = patternnet(10);
% net = train(net, x, t);
% % view(net)
% y = net(x);
% perf = perform(net, t, y);
% classes = vec2ind(y);

fis = newfis('iriser');

numInputs = 4;
numOutputs = 1;
numMF = 3;

% добавляем входные переменные
% a = addvar(a,'varType','varName',varBounds) 
xmin = min(x, [], 2);
xmax = max(x, [], 2); 
for k = 1:numInputs
    fis = addvar(fis, 'input', strcat('input_', int2str(k)), [0.5*xmin(k) 1.5*xmax(k)]); 
end

% добавляем выходные переменные
ymin = min(c);
ymax = max(c);
fis = addvar(fis, 'output', 'output', [0.5*ymin 1.5*ymax]); 

%% Этап 1 - Фиксация функций принадлежности
% Вызов функции поиска первоначального приближения центров фунций активации
[centersMF, sigmasMF] = findCenterMF(fis, [x; c]');

printMessage(0, '==== 1 Stage ====');
printMessage(4, '%d centers of MF ', length(centersMF));
printMessage(4, '%d sigmas of MF ', length(sigmasMF));

%% Этап 2 - формирование структуры
% Сортировка центров и размахов для сохранения нумерации
[centersMF, idx] = sort(centersMF, 2);
for k = 1:size(centersMF, 1)
    sigmasMF(k, :) = sigmasMF(k, idx(k,: ));
end

% Настройка функций принадлежности входных переменных
% a = addmf(a,'input',1,'poor','gaussmf',[1.5 0]);
for k = 1:numInputs
    for m = 1:numMF
        fis = addmf(fis, 'input', k, strcat('mf_', int2str(m)), ...
                                            'gaussmf', ...
                                            [sigmasMF(k, m) centersMF(k, m)]);
    end
end

% Настройка функций принадлежности выходных переменных
for m = 1:numMF
    fis = addmf(fis, 'output', 1, strcat(   'mf_', int2str(m)), ...
                                            'gaussmf', ...
                                            [sigmasMF(end, m) centersMF(end, m)]);
end

% Создание полной базы правил
[combs, ~] = nmultichoosek(1:numMF, numInputs + 1);
ruleList = [combs ones(size(combs, 1), 2)];
fis = addrule(fis, ruleList);

printMessage(0, '==== 2 Stage ====');
printMessage(4, '%d full list of rules has', size(ruleList, 1));

%% Этап 3 - Фиксация нечетких правил
numExamples = size(x, 2);
for t = 1:numExamples
    xx = x(:, t)';
    yy = c(t);

    % перебираем правила и достаем активности входов и выходов
    numRules = getfis(fis, 'numrules');
    numInputs = getfis(fis, 'numinputs');
    for k = 1:numRules
        antecedent = [];
        for i = 1:numInputs
            idx_mf = fis.rule(k).antecedent(i);
            mfparams = fis.input(i).mf(idx_mf).params;
            mftype = fis.input(i).mf(idx_mf).type;
            antecedent = [antecedent evalmf(xx(i), mfparams, mftype)];
        end

        % выход условной части правила
        tau = min(antecedent);

        % выход части следствия
        idx_mf = fis.rule(k).consequent;
        mfparams = fis.output.mf(idx_mf).params;
        mftype = fis.output.mf(idx_mf).type;
        cons = evalmf(yy, mfparams, mftype);

        % корректировка весов на основе конкурентного обучения
        fis.rule(k).weight = fis.rule(k).weight + cons * (tau - fis.rule(k).weight);
    end
end

printMessage(0, '==== 3 Stage ====');
printMessage(4, 'weights of rules have corrected');

%% Этап 4 - Исключение правил
ruleList = getfis(fis, 'rulelist');
numRules = getfis(fis, 'numrules');
numInputs = getfis(fis, 'numinputs');
numOutputs = getfis(fis, 'numoutputs');

idxStrongRules = [];
processedRules = zeros(numRules, 1);

% порог фильтрации слабых правил
weightThreshold = 0.4;

% оставили только посылки правил
antecedentsRuleList = ruleList(:, 1:numInputs);
for k = 1:numRules
    rule = antecedentsRuleList(k, :);
    
    % если правило уже обработано, то пропускаем его
    if(processedRules(k) ~= 0)
        continue;
    end
    
    % логический массив найденных правил с идентичной посылкой
    idxSameRules = ismember(antecedentsRuleList, rule, 'rows');
    
    % помечаем все найденные правила обработанными
    processedRules(idxSameRules) = 1;
    
    % индекс правила с максимальным весом среди идентичных правил
    [maxWeight, idxWinRule] = max(ruleList(idxSameRules, numInputs + numOutputs + 1 : end - 1));
    
    % определение смещения в исходном массиве правил
    idxOffset = find(idxSameRules > 0);
    
    % сравниваем вес правила с пороговым значением - слабые помечаем "-1"
    if (maxWeight < weightThreshold)
        processedRules(idxOffset(1) + idxWinRule - 1) = -1;
    else
        % сильнейшее правило помечаем "2", запоминаем абсолютный индекс
        processedRules(idxOffset(1) + idxWinRule - 1) = 2;
        idxStrongRules = [idxStrongRules idxOffset(1) + idxWinRule - 1];
    end
end

% удаляем слабые и отработанные правила, оставляем только сильнейших
ruleList = ruleList(idxStrongRules, :);
fis.rule = [];
fis = addrule(fis, ruleList);

printMessage(0, '==== 4 Stage ====');
printMessage(4, '%d decimated list of rules has', size(ruleList, 1));

%% Этап 5 - Объединение правил
% условия объединения элементов:
%   - правила имеют одинаковое заключение
%   - некоторые условия правил совпадают
%   - некоторые условия правил образуют полное множество названий значений
%   какой-либо лингвистической переменной
ruleList = getfis(fis, 'rulelist');
numRules = getfis(fis, 'numrules');
numInputs = getfis(fis, 'numinputs');
numOutputs = getfis(fis, 'numoutputs');

% оставили только посылки правил
antecedentsRuleList = ruleList(:, 1:numInputs);
consequentRuleList = ruleList(:, numInputs + 1 : numInputs + numOutputs);

prevNumRulesVal = numRules;

% находим уникальные заключения
uniqueCons = unique(consequentRuleList);

printMessage(0, '==== 5 Stage ====');

count = 1;
isAttemptToMerge = true;
while isAttemptToMerge
    printMessage(4, '====== attempt [%d] ======', count);
    % перебираем заключения и пытаемся сливать правила
    for m = 1:numel(uniqueCons)
        printMessage(4, '[%d] output values of LV', uniqueCons(m));

        % логический массив найденных правил с идентичным следствием
        idxIdentyRules = find(consequentRuleList == uniqueCons(m));

        rest = antecedentsRuleList(idxIdentyRules, :);

        % цикл по всем входным переменным
        for k = 1:numInputs

            % уникальные значения k-ой входной переменной
            uniqueVarVals = unique(rest(:, k));

            % Если полных групп нет, то сделать пропуск
            if (length(uniqueVarVals) < numMF)
                printMessage(8, 'cann''t build full values of LV %d', length(uniqueVarVals));
                continue;
            end

            printMessage(8, 'build full values of LV %d of %d variable', length(uniqueVarVals), m);

            % для k-ой входной переменной матрицу расстояний правил
            dists = squareform(pdist(rest, 'hamming'));

            % выбираем ближайщие к каждому правилу по мере Хемминга 
            numDiffAnts = 1;
            maxDifDists = (numDiffAnts) / (numInputs);
            idxSetMergedRules = [];
            for i = 1:size(dists, 1)

                % фильтр расстояния
                idxSameRules = find(dists(i, :) <= maxDifDists);
                [rest(idxSameRules', :) dists(i, idxSameRules)'];

                % фильтр номера входной переменной
                sameRules = rest(idxSameRules', :);
                cutSameRules = sameRules(:, [1:k - 1 k + 1:end]);

                curRule = rest(i, :);
                cutCurRule = curRule(:, [1:k - 1 k + 1:end]);
                [~, ib] = ismembertol(cutCurRule, cutSameRules, ...
                                        0.05, ...               % порог принятия на грудь
                                        'ByRows', true, ...
                                        'OutputAllIndices', true);

                sameRules(ib{:}, :);
                if (numel(ib{:}) >= numMF && ~isempty(idxSameRules(ib{:})))
                    idxSetMergedRules = [idxSetMergedRules; sort(idxSameRules(ib{:}))];
                end
            end

            % оставляем уникальные списки слияния
            [idxSortedMergedRules, ~, ~] = unique(idxSetMergedRules, 'rows');

            % вывод списка слияния
            mergedRules = [];
            for p = 1:size(idxSortedMergedRules, 1)
                rest(idxSortedMergedRules(p, :), :);

                idxMiddleRule = idxSortedMergedRules(p, ceil(end/2));
                mergedRules = [mergedRules; rest(idxMiddleRule, :)]
            end

            % удаляем все слитые правила из части посылок
            rest(idxSortedMergedRules(:), :) = [];

            % добавляем то, что осталось после вычищения к тому, что слилось
            rest = [rest; mergedRules];
            
            % сортируем массив оставшихся посылок
            rest = unique(rest, 'rows');
        end

        %% проверить эту хрень - правильно ли сортировка выполняется по индексам
        antecedentsRuleList(idxIdentyRules, :) = [];
        antecedentsRuleList = [antecedentsRuleList; rest];

        consequentRuleList(idxIdentyRules, :) = [];
        consequentRuleList = [consequentRuleList; uniqueCons(m) * ones(size(rest, 1), 1)];
        
        [antecedentsRuleList, idxSorted, ~] = unique(antecedentsRuleList, 'rows');
        consequentRuleList = consequentRuleList(idxSorted);
        
    end
    
    numRulesVal = size(antecedentsRuleList, 1);
    
    if (numRulesVal >= prevNumRulesVal)
        isAttemptToMerge = false;
    end
    
    prevNumRulesVal = numRulesVal;
    count = count + 1;
end

printMessage(4, 'Finally rulebase');
[antecedentsRuleList consequentRuleList]

% добавляем базу правил в fis
ruleList = [antecedentsRuleList consequentRuleList ones(size(antecedentsRuleList, 1), 2)];
fis.rule = [];
fis = addrule(fis, ruleList);

%% Цикл обучения
numExamples = size(x, 2);
numIters = 0;
maxNumIters = 50;
minError = 1e5;
bestFis = [];
while numIters < maxNumIters
    error = 0;
    for k = 1:numExamples
        X = x(:, k)';
        Y = c(k);
        [fis, d] = forward(fis, X, Y);

        ita = 0.05;
        fis = backprop(fis, X, Y, ita);

        [~, d] = forward(fis, X, Y);
        error = error + mse(d, Y);
    end
    if (error < minError)
        minError = error;
        bestFis = fis;
    end
    
    printMessage(4, 'iter[%d] error = %8.3f', numIters, error);
    numIters = numIters + 1;
end

res = zeros(numExamples, 2);
for k = 1:numExamples
    X = x(:, k)';
    Y = c(k);
    [bestFis, d] = forward(bestFis, X, Y);
    res(k, :) = [d Y];
end

printMessage(1, 'Обработка базы завершена за %8.3f с\n', toc);

end % of function

%%
function [fis, d] = forward(fis, X, Y)
ruleList = getfis(fis, 'rulelist');
numRules = getfis(fis, 'numrules');
numInputs = getfis(fis, 'numinputs');
numOutputs = getfis(fis, 'numoutputs');

%% L1-L2
% расчет значений функций принадлежности термов входных переменных
for i = 1:numInputs
    numTerms = length(fis.input(i).mf);
    for j = 1:numTerms
        mfparams = fis.input(i).mf(j).params;
        mftype = fis.input(i).mf(j).type;
        fis.input(i).mf(j).a = evalmf(X(i), mfparams, mftype);
        
        m = mfparams(2);
        s = mfparams(1);
        fis.input(i).mf(j).coef_dm = 2 * (X(i) - m) / s / s;
        fis.input(i).mf(j).coef_ds = 2 * (X(i) - m) / s / s / s;
    end
end

%% L3
% расчет выхода условной
% перебираем правила и достаем активности входов
for k = 1:numRules
    antecedent = [];
    for i = 1:numInputs
        antecedent = [antecedent fis.input(i).mf(fis.rule(k).antecedent(i)).a];
    end

    % выход условной части правила
    [fis.rule(k).ant_out, fis.rule(k).idx_min_antc] = min(antecedent);
end

%% L4
% оставили только посылки правил
consequentRuleList = ruleList(:, numInputs + 1 : numInputs + numOutputs);

% находим уникальные заключения
[uniqueCons, ~, ~] = unique(consequentRuleList);

% объединение посылок правил с одинаковым заключением
numUniqueCons = length(uniqueCons);
outputValues_layer4 = zeros(numUniqueCons, 1);

for k = 1:numUniqueCons
    idxRulesSameCons = find(consequentRuleList == uniqueCons(k));
    
    % сумма посылок правил
    outputValues_layer4(k) = 0;
    for m = 1:numel(idxRulesSameCons)
        outputValues_layer4(k) = outputValues_layer4(k) + fis.rule(idxRulesSameCons(m)).ant_out;
    end
    
    % насыщение выхода
    if (outputValues_layer4(k) >= 1.0)
        outputValues_layer4(k) = 1.0;
    end
end

%% L5
% дефаззификация по методу площади
numTerms = length(fis.output.mf);
sumNom = 0;
for k = 1:numTerms
    mfparams = fis.output.mf(k).params;
    sumNom = sumNom + outputValues_layer4(k) * prod(mfparams);
    sumDenom = outputValues_layer4(k) * mfparams(1);
end
fis.output.y = sumNom / sumDenom;
fis.output.outputValues_layer4 = outputValues_layer4;

d = fis.output.y;
    
end % of function

%%
function fis = backprop(fis, X, Y, ita)
ruleList = getfis(fis, 'rulelist');
numRules = getfis(fis, 'numrules');
numInputs = getfis(fis, 'numinputs');
numOutputs = getfis(fis, 'numoutputs');

%% L5
numTerms = length(fis.output.mf);
delta5 = Y - fis.output.y;
fis.output.delta5 = delta5;

coef_s_u = 0;
coef_m_s_u = 0;
for k = 1:numTerms
    mfparams = fis.output.mf(k).params;
    m = mfparams(2);
    s = mfparams(1);
    coef_s_u = coef_s_u + s * fis.output.outputValues_layer4(k);
    coef_m_s_u = coef_m_s_u + m * s * fis.output.outputValues_layer4(k);
end

fis.output.delta4 = zeros(size(fis.output.outputValues_layer4));
for k = 1:numTerms
    mfparams = fis.output.mf(k).params;
    m = mfparams(2);
    s = mfparams(1);
    fis.output.delta4(k) = delta5 * (m * s * coef_s_u - s * coef_m_s_u) / coef_s_u / coef_s_u;
end

for k = 1:numTerms
    mfparams = fis.output.mf(k).params;
    m = mfparams(2);
    s = mfparams(1);
    m = m + ita * delta5 * s * fis.output.outputValues_layer4(k) / coef_s_u;
    s = s + ita * delta5 * (m * fis.output.outputValues_layer4(k) * coef_s_u - coef_m_s_u * fis.output.outputValues_layer4(k)) / coef_s_u / coef_s_u;
    
    fis.output.mf(k).params = [s m];
end

%% L3
% оставили только посылки правил
antecedentsRuleList = ruleList(:, 1:numInputs);
consequentRuleList = ruleList(:, numInputs + 1 : numInputs + numOutputs);

fis.output.delta3 = zeros(numRules, 1);
% перебираем правила и формируем ошибку нейронов третьего слоя
for k = 1:numRules
    
    rule = antecedentsRuleList(k, :);
    cons = consequentRuleList(k, :);
    
    [~, idxIdentRuleRules] = ismembertol(rule, antecedentsRuleList, ...
                                            0.01, ...
                                            'ByRows', true, ...
                                            'OutputAllIndices', true);
   
    cons = consequentRuleList(idxIdentRuleRules{:}, :);
    fis.output.delta3(k) = sum(fis.output.delta4(cons));
end

%% L2
for k = 1:numInputs
    numTerms = length(fis.input(k).mf);
    for n = 1:numTerms
        mfparams = fis.input(k).mf(n).params;
        m = mfparams(2);
        s = mfparams(1);
        
        % перебираем все правила и оцениваем, а не является ли минимумом
        % именно данное значение терма в этом правиле
        fis.input(k).mf(n).sum_q = 0;
        for p = 1:numRules
            
            if ( (antecedentsRuleList(p, k) == n) && (fis.rule(p).idx_min_antc == k) )
                fis.input(k).mf(n).sum_q = fis.input(k).mf(n).sum_q - fis.output.delta3(p);
            end
        end
        
        % корректируем m и s
        m = m - ita * fis.input(k).mf(n).sum_q * fis.input(k).mf(n).a * fis.input(k).mf(n).coef_dm;
        s = s - ita * fis.input(k).mf(n).sum_q * fis.input(k).mf(n).a * fis.input(k).mf(n).coef_ds;
        fis.input(k).mf(n).params = [s m];
    end
end

end % of function

%% 
function [combs, decVal] = nmultichoosek(values, k)
    n = numel(values);                                   %//  number of values
    combs = values(dec2base(0:n ^ k - 1, n) - '0' + 1);  %//  generate all tuples
    decVal = (0:n ^ k - 1); 
end % of function

%% 
function [centersMF, sigmasMF] = findCenterMF(fis, X)

global mws;

% количество входных переменных
numInputs = getfis(fis, 'numinputs');    

%количество термов в каждой входной переменной
numValue = 3;
numValueLV = [numValue numValue numValue numValue numValue];

% центры функций принадлежности термов в каждой переменной
centersMF = zeros(numInputs, numValue);

% ширина шапки функции активации
sigmasMF = zeros(numInputs, numValue);

% параметр перекрытия ф-ций активации одной переменной
r = 0.5;

% минимальные и максимальные значения по каждой входной переменной xi
xmin = min(X, [], 1);
xmax = max(X, [], 1);

% генерация положений центров в пределах распределения исходных данных
% случайная или равномерная
% для воспроизводимости последовательности генерируемого набора случайных чисел
% rng(1, 'twister');  
for k = 1:numInputs
    a = xmin(k);
    b = xmax(k);
    centersMF(k, :) = (b - a) .* rand(1, numValue) + a;
%     centersMF(k, :) = linspace(a, b, numValueLV(k));
end

printMessage(4, 'Центры функций принадлежности до самоорганизации\n');
prec = 3;
dispn(centersMF, prec);

printMessage(4, 'Самоорганизация поиска центров функций принадлежности...\n');

% параметры цикла самоорганизации
numExamples = size(X, 1);
maxIterations = 1000;

% цикл по входным переменным
for k = 1:numInputs
    
    printMessage(8, 'input variable [%d]', k);
    
    % коэффициент скорости обучения
    initialAlpha = 1.0;

    % цикл по итерациям
    for m = 1:maxIterations
        
        % перемешиваем примеры
        idxRows = randperm(size(X, 1));
        X = X(idxRows, :);
        
        % коэффициент скорости обучения
        alpha = m ^ (-0.2);
        
        % цикл по всем образцам
        for n = 1:numExamples
            
            % ищем расстояние от каждой координаты образца до центров
            dists = zeros(1, numValue);
            for p = 1:numValueLV(k)
                dists(p) = sum((X(n, k) - centersMF(k, p)) .^ 2) .^ 0.5;
            end
            
            % выбираем ближайший центр к данному образцу
            [~, indOfNearestCenter] = min(dists);
            
            % корректируем положение притянувшегося центра
            centersMF(k, indOfNearestCenter) = centersMF(k, indOfNearestCenter) + ...
                alpha * (X(n, k) - centersMF(k, indOfNearestCenter)); 
        end
    end
    
    % подбор параметров ширины функций активации
    % константа, показывающая числа, неотличимые от нуля
    EPS = 1e-3; 
    % цикл по всем центрам в текущей переменной
    dists = squareform(pdist(centersMF(k, :)'), 'tomatrix');
    for p = 1:numValueLV(k)
        row = dists(p, :);
        [mindist, ~] = min(row(row > EPS));
        sigmasMF(k, p) = mindist / sqrt(r);
    end
end

printMessage(4, '======================================================\n');
printMessage(4, 'Центры функций принадлежности после самоорганизации\n');
prec = 3;
dispn(centersMF, prec);

printMessage(4, 'Ширина функций принадлежности после самоорганизации\n');
prec = 3;
dispn(sigmasMF, prec);

% запуска алгоритма k-means для альтернативного варианта поиска центров
% фукнций принадлежности
mws.cluster.nClusters = 5;
mws.cluster.distanceType = 'euclidean';

mws.cluster.kmeans.distanceType = 'sqEuclidean';
mws.cluster.kmeans.emptyAction = 'drop';
mws.cluster.kmeans.nReplicates = 5;
mws.cluster.kmeans.nMaxIters = 1000;

nClusters = numValue;
distanceType = mws.cluster.kmeans.distanceType;
emptyAction = mws.cluster.kmeans.emptyAction;
nReplicates = mws.cluster.kmeans.nReplicates;
nMaxIters = mws.cluster.kmeans.nMaxIters;

options = statset('Display', 'final', ...
                  'MaxIter', nMaxIters);

centersMF_KMeans = zeros(size(centersMF));              
for k = 1:numInputs
    [~, centers] = kmeans(  X(:, k), ...
                            nClusters, ...
                            'Distance', distanceType, ...
                            'Emptyaction', emptyAction, ...
                            'Replicates', nReplicates, ...
                            'Options', options);
    centersMF_KMeans(k, :) = centers';
end 
printMessage(4, 'Центры функций принадлежности по результатам k-means и самоорганизации\n');
sort(centersMF_KMeans, 2)
sort(centersMF, 2)

% построение графиков положения центров и распределения данных по
% координатам
% xmax = ceil(max(max(X))); 
% xmin = ceil(min(min(X)));
% ax = [1 size(X, 1) xmin xmax];
% 
% for k = 1:numInputs
%     figure
%     hold on
%     axis(ax); grid on; 
%     % строим центры кластеров
%     plot(X(:, k), 'o');
%     plot(centersMF(k, :), 'ob', 'MarkerSize', 7, 'LineWidth', 2);
%     plot(centersMF_KMeans(k, :), 'or', 'MarkerSize', 7, 'LineWidth', 2);
%     title(strcat('input_var_', int2str(k)));
%     legend('Values', 'Kohonen', 'k-means');
%     hold off
% end 

end % of function