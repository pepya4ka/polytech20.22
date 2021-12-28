#include <stdio.h>
#include "course_prj.h"

void set_value(image_t inImage[N][M], image_t value)
{
	for (int i = 0; i < N; i++){
		for(int j = 0; j < M; j++){
			inImage[i][j] = value;
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
	const char* filenames640[] = {"testdata/test640_16.txt", "testdata/test640_128.txt"};
	const char* filenames1280[] = {"testdata/test1280_16.txt", "testdata/test1280_128.txt"};
	const char* filenames1980[] = {"testdata/test1920_16.txt", "testdata/test1920_128.txt"};
	const int value[] = {16, 128};


	// Call the function for 3 transactions
	image_t inImage[N][M];
	image_t outImage[N][M];
	image_t gauss_kernel[K][K] = { {1, 2, 1}, {2, 4, 2}, {1, 2, 1} };
	
	int t_idx = 0;
	for (int i = 0; i < 3; ++i){
		set_value(inImage, value[t_idx]);
		set_value(outImage, 0);
		
		gauss_blur(inImage, gauss_kernel, outImage);
		pass = cmpr_filter(outImage, filenames640[t_idx]);
		
		if (pass == 0)	{
			fprintf(stderr, "----------Fail!------------\n");
			return 1;
		}
		t_idx = (t_idx + 1) % 2;
	}
	

	fprintf(stdout, "----------Pass!------------\n");
	return 0;
	
}

