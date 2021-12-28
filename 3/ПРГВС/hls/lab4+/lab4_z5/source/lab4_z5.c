
#include "lab4_z5.h"


void foo_b(int data_in[N], int data_out[N], int scale[2], char sel) {
	
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
		data_out[k] = temp1[k] / temp2[k];
	}
}

void foo_m(int data_in[N], int data_out[N], int scale[2], char sel)
{
	int temp1[N], temp2[N];
	int tmp1 = scale[0], tmp2 = scale[1];
	Loop1: for(int i = 0; i < N; i++) {
		int tmp_data = data_in[i];
		if (sel==0) {
			temp1[i] = tmp_data * tmp1;
			temp2[i] = tmp_data * tmp2;
		}
		else {
			temp1[i] = tmp_data * tmp2;
			temp2[i] = tmp_data * tmp1;
		}
	}


	Loop2: for(int k = 0; k < N; k++) {
		data_out[k] = temp1[k] / temp2[k];
	}
}
