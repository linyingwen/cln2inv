#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//cggmp2005.c
int main(int argc, char** argv)
{
int i, j;
i = 1;
j = 10;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, j);
if (!(j >= i)) break;
i = i + 2;
j = -1 + j;
}
assert(j == 6);
return 0;
}
