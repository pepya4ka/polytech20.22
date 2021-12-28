#include <stdio.h>
#include "lab4_z3.h"

int cmp_arr(int data_in[N], int scale[3], int data_cmp1[N], int data_cmp2[N]) {
	int temp1[N];
	for(int i = 0; i < N; i++) {
		temp1[i] = data_in[i] * scale[0];
	}
	for(int j = 0; j < N; j++) {
		int tmp = temp1[j] * scale[1];
		if (data_cmp1[j] != tmp) {
			return 0;
		}
	}
	for(int k = 0; k < N; k++) {
		int tmp = temp1[k] * scale[2];
		if (data_cmp2[k] != tmp) {
			return 0;
		}
	}
	return 1;
}

int main()
{
	int pass=0;

	// Call the function for 3 transactions
	int scale[3];
	int data_in[N];
	int data_out1[N];
	int data_out2[N];
	
	for (int i = 0; i < 3; ++i){
		for(int j = 0; j < N; j++){
			data_in[j] = rand() % (N - 1);
		}
		for(int k = 0; k < 3; ++k){
			scale[k] = rand() % ((N >> 1) - 1);
		}
		
		foo_m(data_in, scale, data_out1, data_out2);
		pass = cmp_arr(data_in, scale, data_out1, data_out2);
		if (pass == 0) {
			fprintf(stderr, "----------Fail!------------\n");
			return 1;
		}
	}
	

	
	fprintf(stdout, "----------Pass!------------\n");
	return 0;
	
}

