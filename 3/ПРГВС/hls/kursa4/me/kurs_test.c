#include "kurs.h"
#include <stdio.h>

int cmp_arr(data_sc inA[N][N], data_sc inB[N][N], data_sc outC[N][N]) {

	data_sc BTAT[N][N];

	func_T(data_sc inB[N][N]);
	func_T(data_sc inA[N][N]);

	for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            outC[i][j] = 0;
            for (int k = 0; k < N; k++) {
                BTAT[i][j] += inB[i][k] * inA[k][j];
            }
        }
    }

	for(int i = 0; i < N; i++) {
		for(int j = 0; j < N; j++) {
				if (outC[i][j] != BTAT[i][j]) {
					return 0;
			}
		}
	}
	
	return 1;
}

int func_T(data_sc inArr[N][N]) {
	for (int i = 0; i < N; i++) {
        for (int j = i + 1; j < N; j++) {
            int temp = inArr[i][j];
            inArr[i][j] = inArr[j][i];
            inArr[j][i] = temp;
        }
	}
}

int main() {
	int pass = 0;
		
	data_sc inA[N][N];
	data_sc inB[N][N];
	data_sc outC[N][N];
	
	for (int i = 0; i < 3; i++) {
				
		//set inA inB inC
		for (int j = 0; j < N; j++) {
			for (int k = 0; k < N; k++) {
				inA[j][k] = rand() % (N - 1);
				inB[j][k] = rand() % (N - 1);
			}
		}
		
		kursFunc(inA, inB, outC);
		pass = cmp_arr(inA, inB, outC);
	}
	
	if (pass == 1) {
		fprintf(stdout, "----------Pass!------------\n");
		return 0;
	} else {
		fprintf(stderr, "----------Fail!------------\n");
		return 1;
	}
}