#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//jm2006.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int unknown_2 = atoi(argv[2]);
int i, j;
i = rand()%2 < unknown_1;
j = rand()%2 < unknown_2;
assert(i >= 0);
assert(j >= 0);
assert(i == j);
int x = i;
int y = j;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, j, x, y);
if (!(x != 0)) break;
x--;
y--;
}
assert(y == 0);
return 0;
}
