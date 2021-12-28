# 1 "/home/sokrat/project/learn/Hybridsystem/homework/hw2/lab2_z1/source/lab2_1.c"
# 1 "/home/sokrat/project/learn/Hybridsystem/homework/hw2/lab2_z1/source/lab2_1.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/sokrat/project/learn/Hybridsystem/homework/hw2/lab2_z1/source/lab2_1.c" 2
# 1 "/home/sokrat/project/learn/Hybridsystem/homework/hw2/lab2_z1/source/lab2_1_inc.c" 1


typedef int atype;
# 1 "/home/sokrat/project/learn/Hybridsystem/homework/hw2/lab2_z1/source/lab2_1.c" 2


atype find_max(atype a_in[128])
{
 atype max = a_in[0];
 for(int i = 0; i < 128; ++i){
  if (max < a_in[i])
   max = a_in[i];
 }
 return max;
}
