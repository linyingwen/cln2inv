#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//underapprox_2-2.c
int main(int argc, char** argv)
{
int x = 0;
int y = 1;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!(x < 6)) break;
x++;
y *= 2;
}
assert(x == 6);
}
