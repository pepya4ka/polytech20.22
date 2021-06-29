function testFIS_2()

clc
clear all
close all

initGlobalData;

global mws;
mws.io.flogid = 1;

filename = 'iris';
tic;
printMessage(1, '������ ��������� ������ ������������� %s', filename);

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

% ��������� ������� ����������
% a = addvar(a,'varType','varName',varBounds) 
xmin = min(x, [], 2);
xmax = max(x, [], 2); 
for k = 1:numInputs
    fis = addvar(fis, 'input', strcat('input_', int2str(k)), [0.5*xmin(k) 1.5*xmax(k)]); 
end

% ��������� �������� ����������
ymin = min(c);
ymax = max(c);
fis = addvar(fis, 'output', 'output', [0.5*ymin 1.5*ymax]); 

%% ���� 1 - �������� ������� ��������������
% ����� ������� ������ ��������������� ����������� ������� ������ ���������
[centersMF, sigmasMF] = findCenterMF(fis, [x; c]');

printMessage(0, '==== 1 Stage ====');
printMessage(4, '%d centers of MF ', length(centersMF));
printMessage(4, '%d sigmas of MF ', length(sigmasMF));

%% ���� 2 - ������������ ���������
% ���������� ������� � �������� ��� ���������� ���������
[centersMF, idx] = sort(centersMF, 2);
for k = 1:size(centersMF, 1)
    sigmasMF(k, :) = sigmasMF(k, idx(k,: ));
end

% ��������� ������� �������������� ������� ����������
% a = addmf(a,'input',1,'poor','gaussmf',[1.5 0]);
for k = 1:numInputs
    for m = 1:numMF
        fis = addmf(fis, 'input', k, strcat('mf_', int2str(m)), ...
                                            'gaussmf', ...
                                            [sigmasMF(k, m) centersMF(k, m)]);
    end
end

% ��������� ������� �������������� �������� ����������
for m = 1:numMF
    fis = addmf(fis, 'output', 1, strcat(   'mf_', int2str(m)), ...
                                            'gaussmf', ...
                                            [sigmasMF(end, m) centersMF(end, m)]);
end

% �������� ������ ���� ������
[combs, ~] = nmultichoosek(1:numMF, numInputs + 1);
ruleList = [combs ones(size(combs, 1), 2)];
fis = addrule(fis, ruleList);

printMessage(0, '==== 2 Stage ====');
printMessage(4, '%d full list of rules has', size(ruleList, 1));

%% ���� 3 - �������� �������� ������
numExamples = size(x, 2);
for t = 1:numExamples
    xx = x(:, t)';
    yy = c(t);

    % ���������� ������� � ������� ���������� ������ � �������
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

        % ����� �������� ����� �������
        tau = min(antecedent);

        % ����� ����� ���������
        idx_mf = fis.rule(k).consequent;
        mfparams = fis.output.mf(idx_mf).params;
        mftype = fis.output.mf(idx_mf).type;
        cons = evalmf(yy, mfparams, mftype);

        % ������������� ����� �� ������ ������������� ��������
        fis.rule(k).weight = fis.rule(k).weight + cons * (tau - fis.rule(k).weight);
    end
end

printMessage(0, '==== 3 Stage ====');
printMessage(4, 'weights of rules have corrected');

%% ���� 4 - ���������� ������
ruleList = getfis(fis, 'rulelist');
numRules = getfis(fis, 'numrules');
numInputs = getfis(fis, 'numinputs');
numOutputs = getfis(fis, 'numoutputs');

idxStrongRules = [];
processedRules = zeros(numRules, 1);

% ����� ���������� ������ ������
weightThreshold = 0.4;

% �������� ������ ������� ������
antecedentsRuleList = ruleList(:, 1:numInputs);
for k = 1:numRules
    rule = antecedentsRuleList(k, :);
    
    % ���� ������� ��� ����������, �� ���������� ���
    if(processedRules(k) ~= 0)
        continue;
    end
    
    % ���������� ������ ��������� ������ � ���������� ��������
    idxSameRules = ismember(antecedentsRuleList, rule, 'rows');
    
    % �������� ��� ��������� ������� �������������
    processedRules(idxSameRules) = 1;
    
    % ������ ������� � ������������ ����� ����� ���������� ������
    [maxWeight, idxWinRule] = max(ruleList(idxSameRules, numInputs + numOutputs + 1 : end - 1));
    
    % ����������� �������� � �������� ������� ������
    idxOffset = find(idxSameRules > 0);
    
    % ���������� ��� ������� � ��������� ��������� - ������ �������� "-1"
    if (maxWeight < weightThreshold)
        processedRules(idxOffset(1) + idxWinRule - 1) = -1;
    else
        % ���������� ������� �������� "2", ���������� ���������� ������
        processedRules(idxOffset(1) + idxWinRule - 1) = 2;
        idxStrongRules = [idxStrongRules idxOffset(1) + idxWinRule - 1];
    end
end

% ������� ������ � ������������ �������, ��������� ������ ����������
ruleList = ruleList(idxStrongRules, :);
fis.rule = [];
fis = addrule(fis, ruleList);

printMessage(0, '==== 4 Stage ====');
printMessage(4, '%d decimated list of rules has', size(ruleList, 1));

%% ���� 5 - ����������� ������
% ������� ����������� ���������:
%   - ������� ����� ���������� ����������
%   - ��������� ������� ������ ���������
%   - ��������� ������� ������ �������� ������ ��������� �������� ��������
%   �����-���� ��������������� ����������
ruleList = getfis(fis, 'rulelist');
numRules = getfis(fis, 'numrules');
numInputs = getfis(fis, 'numinputs');
numOutputs = getfis(fis, 'numoutputs');

% �������� ������ ������� ������
antecedentsRuleList = ruleList(:, 1:numInputs);
consequentRuleList = ruleList(:, numInputs + 1 : numInputs + numOutputs);

prevNumRulesVal = numRules;

% ������� ���������� ����������
uniqueCons = unique(consequentRuleList);

printMessage(0, '==== 5 Stage ====');

count = 1;
isAttemptToMerge = true;
while isAttemptToMerge
    printMessage(4, '====== attempt [%d] ======', count);
    % ���������� ���������� � �������� ������� �������
    for m = 1:numel(uniqueCons)
        printMessage(4, '[%d] output values of LV', uniqueCons(m));

        % ���������� ������ ��������� ������ � ���������� ����������
        idxIdentyRules = find(consequentRuleList == uniqueCons(m));

        rest = antecedentsRuleList(idxIdentyRules, :);

        % ���� �� ���� ������� ����������
        for k = 1:numInputs

            % ���������� �������� k-�� ������� ����������
            uniqueVarVals = unique(rest(:, k));

            % ���� ������ ����� ���, �� ������� �������
            if (length(uniqueVarVals) < numMF)
                printMessage(8, 'cann''t build full values of LV %d', length(uniqueVarVals));
                continue;
            end

            printMessage(8, 'build full values of LV %d of %d variable', length(uniqueVarVals), m);

            % ��� k-�� ������� ���������� ������� ���������� ������
            dists = squareform(pdist(rest, 'hamming'));

            % �������� ��������� � ������� ������� �� ���� �������� 
            numDiffAnts = 1;
            maxDifDists = (numDiffAnts) / (numInputs);
            idxSetMergedRules = [];
            for i = 1:size(dists, 1)

                % ������ ����������
                idxSameRules = find(dists(i, :) <= maxDifDists);
                [rest(idxSameRules', :) dists(i, idxSameRules)'];

                % ������ ������ ������� ����������
                sameRules = rest(idxSameRules', :);
                cutSameRules = sameRules(:, [1:k - 1 k + 1:end]);

                curRule = rest(i, :);
                cutCurRule = curRule(:, [1:k - 1 k + 1:end]);
                [~, ib] = ismembertol(cutCurRule, cutSameRules, ...
                                        0.05, ...               % ����� �������� �� �����
                                        'ByRows', true, ...
                                        'OutputAllIndices', true);

                sameRules(ib{:}, :);
                if (numel(ib{:}) >= numMF && ~isempty(idxSameRules(ib{:})))
                    idxSetMergedRules = [idxSetMergedRules; sort(idxSameRules(ib{:}))];
                end
            end

            % ��������� ���������� ������ �������
            [idxSortedMergedRules, ~, ~] = unique(idxSetMergedRules, 'rows');

            % ����� ������ �������
            mergedRules = [];
            for p = 1:size(idxSortedMergedRules, 1)
                rest(idxSortedMergedRules(p, :), :);

                idxMiddleRule = idxSortedMergedRules(p, ceil(end/2));
                mergedRules = [mergedRules; rest(idxMiddleRule, :)]
            end

            % ������� ��� ������ ������� �� ����� �������
            rest(idxSortedMergedRules(:), :) = [];

            % ��������� ��, ��� �������� ����� ��������� � ����, ��� �������
            rest = [rest; mergedRules];
            
            % ��������� ������ ���������� �������
            rest = unique(rest, 'rows');
        end

        %% ��������� ��� ����� - ��������� �� ���������� ����������� �� ��������
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

% ��������� ���� ������ � fis
ruleList = [antecedentsRuleList consequentRuleList ones(size(antecedentsRuleList, 1), 2)];
fis.rule = [];
fis = addrule(fis, ruleList);

%% ���� ��������
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

printMessage(1, '��������� ���� ��������� �� %8.3f �\n', toc);

end % of function

%%
function [fis, d] = forward(fis, X, Y)
ruleList = getfis(fis, 'rulelist');
numRules = getfis(fis, 'numrules');
numInputs = getfis(fis, 'numinputs');
numOutputs = getfis(fis, 'numoutputs');

%% L1-L2
% ������ �������� ������� �������������� ������ ������� ����������
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
% ������ ������ ��������
% ���������� ������� � ������� ���������� ������
for k = 1:numRules
    antecedent = [];
    for i = 1:numInputs
        antecedent = [antecedent fis.input(i).mf(fis.rule(k).antecedent(i)).a];
    end

    % ����� �������� ����� �������
    [fis.rule(k).ant_out, fis.rule(k).idx_min_antc] = min(antecedent);
end

%% L4
% �������� ������ ������� ������
consequentRuleList = ruleList(:, numInputs + 1 : numInputs + numOutputs);

% ������� ���������� ����������
[uniqueCons, ~, ~] = unique(consequentRuleList);

% ����������� ������� ������ � ���������� �����������
numUniqueCons = length(uniqueCons);
outputValues_layer4 = zeros(numUniqueCons, 1);

for k = 1:numUniqueCons
    idxRulesSameCons = find(consequentRuleList == uniqueCons(k));
    
    % ����� ������� ������
    outputValues_layer4(k) = 0;
    for m = 1:numel(idxRulesSameCons)
        outputValues_layer4(k) = outputValues_layer4(k) + fis.rule(idxRulesSameCons(m)).ant_out;
    end
    
    % ��������� ������
    if (outputValues_layer4(k) >= 1.0)
        outputValues_layer4(k) = 1.0;
    end
end

%% L5
% �������������� �� ������ �������
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
% �������� ������ ������� ������
antecedentsRuleList = ruleList(:, 1:numInputs);
consequentRuleList = ruleList(:, numInputs + 1 : numInputs + numOutputs);

fis.output.delta3 = zeros(numRules, 1);
% ���������� ������� � ��������� ������ �������� �������� ����
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
        
        % ���������� ��� ������� � ���������, � �� �������� �� ���������
        % ������ ������ �������� ����� � ���� �������
        fis.input(k).mf(n).sum_q = 0;
        for p = 1:numRules
            
            if ( (antecedentsRuleList(p, k) == n) && (fis.rule(p).idx_min_antc == k) )
                fis.input(k).mf(n).sum_q = fis.input(k).mf(n).sum_q - fis.output.delta3(p);
            end
        end
        
        % ������������ m � s
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

% ���������� ������� ����������
numInputs = getfis(fis, 'numinputs');    

%���������� ������ � ������ ������� ����������
numValue = 3;
numValueLV = [numValue numValue numValue numValue numValue];

% ������ ������� �������������� ������ � ������ ����������
centersMF = zeros(numInputs, numValue);

% ������ ����� ������� ���������
sigmasMF = zeros(numInputs, numValue);

% �������� ���������� �-��� ��������� ����� ����������
r = 0.5;

% ����������� � ������������ �������� �� ������ ������� ���������� xi
xmin = min(X, [], 1);
xmax = max(X, [], 1);

% ��������� ��������� ������� � �������� ������������� �������� ������
% ��������� ��� �����������
% ��� ����������������� ������������������ ������������� ������ ��������� �����
% rng(1, 'twister');  
for k = 1:numInputs
    a = xmin(k);
    b = xmax(k);
    centersMF(k, :) = (b - a) .* rand(1, numValue) + a;
%     centersMF(k, :) = linspace(a, b, numValueLV(k));
end

printMessage(4, '������ ������� �������������� �� ���������������\n');
prec = 3;
dispn(centersMF, prec);

printMessage(4, '��������������� ������ ������� ������� ��������������...\n');

% ��������� ����� ���������������
numExamples = size(X, 1);
maxIterations = 1000;

% ���� �� ������� ����������
for k = 1:numInputs
    
    printMessage(8, 'input variable [%d]', k);
    
    % ����������� �������� ��������
    initialAlpha = 1.0;

    % ���� �� ���������
    for m = 1:maxIterations
        
        % ������������ �������
        idxRows = randperm(size(X, 1));
        X = X(idxRows, :);
        
        % ����������� �������� ��������
        alpha = m ^ (-0.2);
        
        % ���� �� ���� ��������
        for n = 1:numExamples
            
            % ���� ���������� �� ������ ���������� ������� �� �������
            dists = zeros(1, numValue);
            for p = 1:numValueLV(k)
                dists(p) = sum((X(n, k) - centersMF(k, p)) .^ 2) .^ 0.5;
            end
            
            % �������� ��������� ����� � ������� �������
            [~, indOfNearestCenter] = min(dists);
            
            % ������������ ��������� �������������� ������
            centersMF(k, indOfNearestCenter) = centersMF(k, indOfNearestCenter) + ...
                alpha * (X(n, k) - centersMF(k, indOfNearestCenter)); 
        end
    end
    
    % ������ ���������� ������ ������� ���������
    % ���������, ������������ �����, ����������� �� ����
    EPS = 1e-3; 
    % ���� �� ���� ������� � ������� ����������
    dists = squareform(pdist(centersMF(k, :)'), 'tomatrix');
    for p = 1:numValueLV(k)
        row = dists(p, :);
        [mindist, ~] = min(row(row > EPS));
        sigmasMF(k, p) = mindist / sqrt(r);
    end
end

printMessage(4, '======================================================\n');
printMessage(4, '������ ������� �������������� ����� ���������������\n');
prec = 3;
dispn(centersMF, prec);

printMessage(4, '������ ������� �������������� ����� ���������������\n');
prec = 3;
dispn(sigmasMF, prec);

% ������� ��������� k-means ��� ��������������� �������� ������ �������
% ������� ��������������
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
printMessage(4, '������ ������� �������������� �� ����������� k-means � ���������������\n');
sort(centersMF_KMeans, 2)
sort(centersMF, 2)

% ���������� �������� ��������� ������� � ������������� ������ ��
% �����������
% xmax = ceil(max(max(X))); 
% xmin = ceil(min(min(X)));
% ax = [1 size(X, 1) xmin xmax];
% 
% for k = 1:numInputs
%     figure
%     hold on
%     axis(ax); grid on; 
%     % ������ ������ ���������
%     plot(X(:, k), 'o');
%     plot(centersMF(k, :), 'ob', 'MarkerSize', 7, 'LineWidth', 2);
%     plot(centersMF_KMeans(k, :), 'or', 'MarkerSize', 7, 'LineWidth', 2);
%     title(strcat('input_var_', int2str(k)));
%     legend('Values', 'Kohonen', 'k-means');
%     hold off
% end 

end % of function