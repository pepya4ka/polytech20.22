
#include "lab4_z4.h"


void foo_b(int data_in[N], int scale[3], int data_out[N]) {

	int temp1[N], temp2[N], temp3[N];
	Loop1: for(int i = 0; i < N; i++) {
		temp1[i] = data_in[i] * scale[0];
		temp2[i] = data_in[i] * scale[1];
	}
	Loop2: for(int j = 0; j < N; j++) {
		temp3[j] = temp1[j] * scale[2];
	}
	Loop3: for(int k = 0; k < N; k++) {
		data_out[k] = temp2[k] + temp3[k];
	}
}

void foo_m(int data_in[N], int scale[3], int data_out[N])
{
	int temp1[N], temp2[N], temp3[N], temp4[N];
	int tmp1 = scale[0], tmp2 = scale[1], tmp3 = scale[2];
	Loop1: for(int i = 0; i < N; i++) {
		temp1[i] = data_in[i] * tmp1;
		temp2[i] = data_in[i] * tmp2;
	}
	Loop2: for(int j = 0; j < N; j++) {
		temp3[j] = temp1[j] * tmp3;
		temp4[j] = temp2[j];
	}
	Loop3: for(int k = 0; k < N; k++) {
		data_out[k] = temp4[k] + temp3[k];
	}
}
