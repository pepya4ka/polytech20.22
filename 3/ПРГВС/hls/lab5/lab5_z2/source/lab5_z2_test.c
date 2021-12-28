#include <stdio.h>
#include "lab5_z2.h"
 
 
 int cmp_arr(int d_in[N], int d_cmp[N-3])
{
	for(int i = 0; i < (N-3); i+=4) {
		int tmp = d_in[i] + d_in[i+1] + d_in[i+2] + d_in[i+3];
		if (tmp != d_cmp[i])
			return 0;
	} 
	return 1;
}
 
 
int main () {

	int pass = 0;
	// Create input data
	int d_in[N];
	int d_out[N-3];

	for (int i = 0; i < 3; ++i){
		for(int j = 0; j < N; j++){
			d_in[j] = rand() % (N - 1) + 1;
		}
		
		
		lab5_z2(d_in, d_out);
		pass = cmp_arr(d_in, d_out);
		if (pass == 0) {
			fprintf(stderr, "----------Fail!------------\n");
			return 1;
		}
	}
	

	
	fprintf(stdout, "----------Pass!------------\n");
	return 0;

}
