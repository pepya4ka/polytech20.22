#include <stdio.h>
#include "lab4_z4.h"

int cmp_arr(int data_in[N], int scale[3], int data_cmp[N]) {
	
	int temp1[N], temp2[N], temp3[N];
	for(int i = 0; i < N; i++) {
		temp1[i] = data_in[i] * scale[0];
		temp2[i] = data_in[i] * scale[1];
	}
	for(int j = 0; j < N; j++) {
		temp3[j] = temp1[j] * scale[2];
	}
	for(int k = 0; k < N; k++) {
		int tmp = temp2[k] + temp3[k];
		if (tmp != data_cmp[k]) {
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
	int data_out[N];
	
	for (int i = 0; i < 3; ++i){
		for(int j = 0; j < N; j++){
			data_in[j] = rand() % (N - 1);
		}
		for(int k = 0; k < 3; ++k){
			scale[k] = rand() % ((N >> 1) - 1);
		}
		
		foo_m(data_in, scale, data_out);
		pass = cmp_arr(data_in, scale, data_out);
		if (pass == 0) {
			fprintf(stderr, "----------Fail!------------\n");
			return 1;
		}
	}
	

	
	fprintf(stdout, "----------Pass!------------\n");
	return 0;
	
}

