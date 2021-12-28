#include "lab3_z2.h"

void lab3_z2(data_sc D_I[N], data_sc* C_I, data_sc D_O[N]) {

	for(int i = 0; i < N; ++i) {
		data_sc macc = D_I[i];

		for(int j = 0; j < M; ++j) {
			macc *= C_I[j]; 
		}

		D_O[i] = macc;
	}
}
