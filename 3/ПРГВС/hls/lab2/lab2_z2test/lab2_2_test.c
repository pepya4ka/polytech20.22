#include "lab2_2_inc.c"
#include <stdlib.h>
#include <stdio.h>


static atype inArr_a[N] = {

};

int main(int argc, char* argv[]) {
	int pass = 0;
	int max_elem = 127789;
	int res_max;
	
	
	
	for(int i = 0; i < 32; ++i){
			
		res_max = find_max(inArr_a);
			
		if (res_max != max_elem){
			fprintf(stdout, "  expected %d != got %d ERROR\n", max_elem, res_max);
			pass = 1;
		}
		else{
			fprintf(stdout, "  expected %d == got %d PASS \n", max_elem, res_max);
		}
		
	}
	
	if (pass == 0)
    {
        fprintf(stdout, "----------Pass!------------\n");
        return 0;
    }
    else
    {
        fprintf(stderr, "----------Fail!------------\n");
        return 1;
    }

}

