#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//gj2007.c
int main(int argc, char** argv)
{
int x = 0;
int y = 50;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!(x < 100)) break;
if (x < 50)
{
x = x + 1;
}
else
{
x = x + 1;
y = y + 1;
}
}
assert(y == 100);
return 0;
}
