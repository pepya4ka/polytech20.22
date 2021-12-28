#include <string.h>
#include "lab3_z2.h"


void lab3_z2(data_sc D_I[N], data_sc* C_I, data_sc D_O[N])
{
	data_sc buff[M];
	memcpy(buff, C_I, M * sizeof(data_sc));
	
	for(int i = 0; i < N; ++i){
		data_sc macc = D_I[i];
		for(int j = 0; j < M; ++j){
			macc *= buff[j]; 
		}
		D_O[i] = macc;
	}
}
