#include "lab2_1_inc.c"

atype find_max(atype a_in[N])
{
	atype max = a_in[0];
	for(int i = 0; i < N; ++i){
		if (max < a_in[i])
			max = a_in[i];
	}
	return max;
}
