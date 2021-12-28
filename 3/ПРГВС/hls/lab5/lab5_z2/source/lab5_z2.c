#include "lab5_z2.h"

void lab5_z2(int d_in[N], int d_out[N-3])
{
	for_label0: for(int i = 0; i < (N-3); i=i+4) {
		d_out[i] = d_in[i] + d_in[i+1] + d_in[i+2] + d_in[i+3];
	} 

}


