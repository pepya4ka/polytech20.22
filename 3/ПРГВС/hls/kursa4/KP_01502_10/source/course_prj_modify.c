#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "course_prj.h"

void set_value(image_t inImage[N][M], image_t value)
{
	for (int i = 0; i < N; i++){
		for(int j = 0; j < M; j++){
			inImage[i][j] = value;
		}
	}
}

void set_zero(image_t inImage[N][M])
{
	for (int i = 0; i < N; i++) {
		for(int j = 0; j < M; j++) {
			inImage[i][j] = 0;
		}
	}
}

int cmpr_filter(const image_t cmpImage[N][M], const char* filename) {
	FILE* fp = fopen(filename, "r");
	if (fp == NULL) {
        printf("Error: could not open file %s\n", filename);
        return 0;
    }
    int temp = 0;
    for (int i = 0; i < N; i++) {
    	for (int j = 0; j < M; j++) {
    		fscanf(fp, "%d", &temp);
    		if (temp != cmpImage[i][j]) {
    			printf("Value not equal! Index: (%d, %d); Values: (%d, %d); \n", i, j, temp, cmpImage[i][j]);
    			return 0;
    		}	
    	}
    }
	
	fclose(fp);
	return 1;
}


int main()
{
	int pass=0;

	// Call the function for 32 transactions
	const char* filenames640[] = {"test640_16.txt", "test640_128.txt"};
	const char* filenames1280[] = {"test1280_16.txt", "test1280_128.txt"};
	const char* filenames1980[] = {"test1920_16.txt", "test1920_128.txt"};
	const int value[] = {16, 128};
	
	image_t inImage[N][M];
	image_t outImage[N][M];
	image_t gauss_kernel[K][K] = { {1, 2, 1}, {2, 4, 2}, {1, 2, 1} };
	
	struct timespec t0, t1;
	double acc_time = 0.0;
	int t_idx = 0;
	for (int i = 0; i < 32; ++i){
		set_value(inImage, value[t_idx]);
		set_zero(outImage);
		
		if(clock_gettime(CLOCK_REALTIME, &t0) != 0) {
			perror("Error in calling clock_gettime\n");
         	exit(EXIT_FAILURE);
     	}
		gauss_blur(inImage, gauss_kernel, outImage);
		if(clock_gettime(CLOCK_REALTIME, &t1) != 0) {
         	perror("Error in calling clock_gettime\n");
         	exit(EXIT_FAILURE);
     	}
     	
     	double diff_time = (((double)(t1.tv_sec - t0.tv_sec))*1000000000.0) + (double)(t1.tv_nsec - t0.tv_nsec);
		acc_time += diff_time;
		double temp_avg_time = acc_time / (i + 1); // take average time
		printf("Elapsed time: %.4lf nanoseconds\n", temp_avg_time);
	
		pass = cmpr_filter(outImage, filenames640[t_idx]);
		if (pass == 0)	{
			fprintf(stderr, "----------Fail!------------\n");
			return 1;
		}
		
		t_idx = (t_idx+1) % 2;
		
	}

	
	fprintf(stdout, "----------Pass!------------\n");
	return 0;	
}

