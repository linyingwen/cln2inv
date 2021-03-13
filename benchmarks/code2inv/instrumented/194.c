#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//mono-crafted_12.c
int main(int argc, char** argv)
{
int x = 0;
int y = 10000000;
int z = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, z);
if (!(x < y)) break;
if (x >= 5000000)
z = z + 2;
x++;
}
assert((z % 2) == 0);
return 0;
}
