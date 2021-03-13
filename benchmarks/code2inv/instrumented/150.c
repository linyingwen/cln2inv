#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//simple_4-2.c
int main(int argc, char** argv)
{
int x = 0x0ffffff0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d  \n", 1, while_counter_1++, 1, x);
if (!(x > 0)) break;
x -= 2;
}
assert((x % 2) == 0);
}
