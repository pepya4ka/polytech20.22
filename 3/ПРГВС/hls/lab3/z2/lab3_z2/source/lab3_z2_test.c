#include <stdio.h>
#include "lab3_z2.h"


void set_random(data_sc* in_arr, int size) {

	for(int i = 0; i < size; ++i) {
		in_arr[i] = rand() % N;
	}

}

int cmp_arr(data_sc D_I[N], data_sc C_I[M], data_sc D_O[N]) {
	data_sc cmp_buff[N];

	for(int i = 0; i < N; ++i) {
		cmp_buff[i] = D_I[i];

		for(int j = 0; j < M; ++j) {
			cmp_buff[i] *= C_I[j];
		}

		if (cmp_buff[i] != D_O[i]) {
			return 0;
		}
	}
	return 1;
}

int main() {
	int pass=0;

	// Call the function for 2 transactions
	data_sc D_I[N];
	data_sc C_I[M];
	data_sc D_O[N];

	for (int i = 0; i < 2; ++i) {
		set_random(D_I, N);
		set_random(C_I, M);
		
		lab3_z2(D_I, C_I, D_O);
		pass = cmp_arr(D_I, C_I, D_O);
		if (pass == 0){break;}
	}
	
	
	if (pass == 1)	{
		fprintf(stdout, "----------Pass!------------\n");
		return 0;}
	else 	{
		fprintf(stderr, "----------Fail!------------\n");
		return 1;
	}
}
