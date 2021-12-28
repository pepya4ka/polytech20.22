#include "kurs.h"

void kursFunc(data_sc inA[N][N], data_sc inB[N][N], data_sc outC[N][N]) {
	
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            outC[i][j] = 0;
            for (int k = 0; k < N; k++) {
                outC[i][j] += inA[i][k] * inB[k][j];
            }
        }
    }
	
	for (int i = 0; i < N; i++) {
        for (int j = i + 1; j < N; j++) {
            int temp = outC[i][j];
            outC[i][j] = outC[j][i];
            outC[j][i] = temp;
        }
	}
}