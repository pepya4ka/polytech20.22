#include <stdlib.h>
#include <stdio.h>
#include <time.h>
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

	// Call the function for 32 transactions
	int scale[3];
	int data_in[N];
	int data_out1[N];
	int data_out2[N];
	struct timespec t0, t1;
	double acc_time = 0.0;

	for (int i = 0; i < 32; ++i){
		for(int j = 0; j < N; j++){
			data_in[j] = rand() % (N - 1);
		}
		for(int k = 0; k < 3; ++k){
			scale[k] = rand() % ((N >> 1) - 1);
		}
		
		
		if(clock_gettime(CLOCK_REALTIME, &t0) != 0) {
			perror("Error in calling clock_gettime\n");
         	exit(EXIT_FAILURE);
     	}
		foo_m(data_in, scale, data_out1, data_out2);
		if(clock_gettime(CLOCK_REALTIME, &t1) != 0) {
         	perror("Error in calling clock_gettime\n");
         	exit(EXIT_FAILURE);
     	}
     	double diff_time = (((double)(t1.tv_sec - t0.tv_sec))*1000000000.0) + (double)(t1.tv_nsec - t0.tv_nsec);
		acc_time += diff_time;
		double temp_avg_time = acc_time / (i + 1); // take average time
		printf("Elapsed time: %.4lf nanoseconds\n", temp_avg_time);
		
		pass = cmp_arr(data_in, scale, data_out1, data_out2);
		if (pass == 0) {
			fprintf(stderr, "----------Fail!------------\n");
			return 1;
		}
	}


	fprintf(stdout, "----------Pass!------------\n");
	return 0;	
}

