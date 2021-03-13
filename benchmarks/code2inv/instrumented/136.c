#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//diamond_1-1.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int x = 0;
int y = rand()%2 < unknown_1;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!(x < 99)) break;
if (y % 2 == 0)
{
x += 2;
}
else
{
x++;
}
}
assert((x % 2) == (y % 2));
}
