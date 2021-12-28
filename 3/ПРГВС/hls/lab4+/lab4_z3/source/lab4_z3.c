#include "lab4_z3.h"


void foo_b(int data_in[N], int scale[3], int data_out1[N], int data_out2[N])
{
	int temp1[N];
	Loop1: for(int i = 0; i < N; i++) {
				temp1[i] = data_in[i] * scale[0];
			}
	Loop2: for(int j = 0; j < N; j++) {
				data_out1[j] = temp1[j] * scale[1];
			}
	Loop3: for(int k = 0; k < N; k++) {
				data_out2[k] = temp1[k] * scale[2];	
			}

}

void Split(int in[N], int out1[N], int out2[N]) {
// Duplicated data
	L1:	for(int i=0;i<N;i++) {
		out1[i] = in[i];
		out2[i] = in[i];
	}
}


void foo_m(int data_in[N], int scale[3], int data_out1[N], int data_out2[N])
{
	int temp1[N], temp2[N], temp3[N];
	int tmp1 = scale[0], tmp2 = scale[1], tmp3 = scale[2];
	Loop1: for(int i = 0; i < N; i++) {
		temp1[i] = data_in[i] * tmp1;
	}
	Split(temp1, temp2, temp3);
	Loop2: for(int j = 0; j < N; j++) {
		data_out1[j] = temp2[j] * tmp2;
	}
	Loop3: for(int k = 0; k < N; k++) {
		data_out2[k] = temp3[k] * tmp3;
	}
}
