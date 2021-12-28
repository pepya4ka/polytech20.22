#include <stdio.h>
#include "lab4_z5.h"

int cmp_arr(int data_in[N], int data_cmp[N], int scale[2], char sel) {
	
	int temp1[N], temp2[N];
	if (sel==0) {
	Loop1: for(int i = 0; i < N; i++) {
			temp1[i] = data_in[i] * scale[0];
			temp2[i] = data_in[i] * scale[1];
		}
	}
	else {
	Loop2: for(int j = 0; j < N; j++) {
			temp1[j] = data_in[j] * scale[1];
			temp2[j] = data_in[j] * scale[0];
		}
	}
	Loop3: for(int k = 0; k < N; k++) {
		int tmp = temp1[k] / temp2[k];
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
	int scale[2];
	int data_in[N];
	int data_out[N];
	
	for (int i = 0; i < 3; ++i){
		for(int j = 0; j < N; j++){
			data_in[j] = rand() % (N - 1) + 1;
		}
		for(int k = 0; k < 2; ++k){
			scale[k] = rand() % (N >> 1) + 1;
		}
		
		foo_m(data_in, data_out, scale, 0);
		pass = cmp_arr(data_in, data_out, scale, 0);
		if (pass == 0) {
			fprintf(stderr, "----------Fail!------------\n");
			return 1;
		}
		
		foo_m(data_in, data_out, scale, 1);
		pass = cmp_arr(data_in, data_out, scale, 1);
		if (pass == 0) {
			fprintf(stderr, "----------Fail!------------\n");
			return 1;
		}
	}
	

	
	fprintf(stdout, "----------Pass!------------\n");
	return 0;
	
}

