#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//Mono5_1.c
int main(int argc, char** argv)
{
int x = 0;
int y = 10000000;
int z = 5000000;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, z);
if (!(x < y)) break;
if (x >= 5000000)
z--;
x++;
}
assert(z != 0);
}
