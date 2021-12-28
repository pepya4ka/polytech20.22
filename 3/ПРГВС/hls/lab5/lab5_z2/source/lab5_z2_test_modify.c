#include <stdlib.h>
#include <stdio.h>
#include <time.h>
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

int main()
{
	int pass=0;

	// Call the function for 32 transactions
	int d_in[N];
	int d_out[N-3];
	struct timespec t0, t1;
	double acc_time = 0.0;

	for (int i = 0; i < 32; ++i){
		for(int j = 0; j < N; j++){
			d_in[j] = rand() % (N - 1) + 1;
		}
		
		if(clock_gettime(CLOCK_REALTIME, &t0) != 0) {
			perror("Error in calling clock_gettime\n");
         	exit(EXIT_FAILURE);
     	}
		lab5_z2(d_in, d_out);
		if(clock_gettime(CLOCK_REALTIME, &t1) != 0) {
         	perror("Error in calling clock_gettime\n");
         	exit(EXIT_FAILURE);
     	}
     	double diff_time = (((double)(t1.tv_sec - t0.tv_sec))*1000000000.0) + (double)(t1.tv_nsec - t0.tv_nsec);
		acc_time += diff_time;
		double temp_avg_time = acc_time / (i + 1); // take average time
		printf("Elapsed time: %.4lf nanoseconds\n", temp_avg_time);
		
		pass = cmp_arr(d_in, d_out);
		if (pass == 0)	{
			fprintf(stderr, "----------Fail!------------\n");
			return 1;
		}
	}

	
	fprintf(stdout, "----------Pass!------------\n");
	return 0;	
}

