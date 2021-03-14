#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//gr2006.c
int main(int argc, char** argv)
{
int x, y;
x = 0;
y = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!( 1 == 1 )) break;
if (x < 50)
{
y++;
}
else
{
y--;
}
if (y < 0) break;
x++;
}
assert(x == 100);
return 0;
}
