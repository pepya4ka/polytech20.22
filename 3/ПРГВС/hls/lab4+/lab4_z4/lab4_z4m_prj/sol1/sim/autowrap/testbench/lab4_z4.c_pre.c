# 1 "/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4/source/lab4_z4.c"
# 1 "/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4/source/lab4_z4.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4/source/lab4_z4.c" 2

# 1 "/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4/source/lab4_z4.h" 1


 typedef int data_sc;

 void foo_b(int data_in[16384], int scale[3], int data_out[16384]);
 void foo_m(int data_in[16384], int scale[3], int data_out[16384]);
# 3 "/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4/source/lab4_z4.c" 2


void foo_b(int data_in[16384], int scale[3], int data_out[16384]) {

 int temp1[16384], temp2[16384], temp3[16384];
 Loop1: for(int i = 0; i < 16384; i++) {
  temp1[i] = data_in[i] * scale[0];
  temp2[i] = data_in[i] * scale[1];
 }
 Loop2: for(int j = 0; j < 16384; j++) {
  temp3[j] = temp1[j] * scale[2];
 }
 Loop3: for(int k = 0; k < 16384; k++) {
  data_out[k] = temp2[k] + temp3[k];
 }
}

void foo_m(int data_in[16384], int scale[3], int data_out[16384])
{
 int temp1[16384], temp2[16384], temp3[16384], temp4[16384];
 int tmp1 = scale[0], tmp2 = scale[1], tmp3 = scale[2];
 Loop1: for(int i = 0; i < 16384; i++) {
  temp1[i] = data_in[i] * tmp1;
  temp2[i] = data_in[i] * tmp2;
 }
 Loop2: for(int j = 0; j < 16384; j++) {
  temp3[j] = temp1[j] * tmp3;
  temp4[j] = temp2[j];
 }
 Loop3: for(int k = 0; k < 16384; k++) {
  data_out[k] = temp4[k] + temp3[k];
 }
}
