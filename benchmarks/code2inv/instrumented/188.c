#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//Mono4_1.c
int main(int argc, char** argv)
{
int x = 0;
int y = 500000;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!(x < 1000000)) break;
if (x < 500000)
{
x = x + 1;
}
else
{
x = x + 1;
y = y + 1;
}
}
assert(y != x);
return 0;
}
