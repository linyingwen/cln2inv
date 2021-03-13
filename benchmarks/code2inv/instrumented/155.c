#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//simple_vardep_1.c
int main(int argc, char** argv)
{
int i = 0;
int j = 0;
int l = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, j, l);
if (!(l < 0x0fffffff)) break;
i = i + 1;
j = j + 2;
l = l + 3;
assert(l == (i + j));
}
}
