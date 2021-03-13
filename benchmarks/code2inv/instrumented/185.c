#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//Mono1_1-1.c
int main(int argc, char** argv)
{
int x = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d  \n", 1, while_counter_1++, 1, x);
if (!(x < 100000000)) break;
if (x < 10000000)
{
x++;
}
else
{
x += 2;
}
}
assert(x == 100000001) ;
}
