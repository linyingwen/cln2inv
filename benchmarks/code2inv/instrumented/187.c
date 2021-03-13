#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//Mono3_1.c
int main(int argc, char** argv)
{
int x = 0;
int y = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!(x < 1000000)) break;
if (x < 500000)
{
y++;
}
else
{
y--;
}
x++;
}
assert(y != 0);
}
