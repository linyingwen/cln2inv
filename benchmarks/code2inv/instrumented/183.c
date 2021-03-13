#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//terminator_03-2.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int unknown_2 = atoi(argv[2]);
int x = rand()%2 < unknown_1;
int y = rand()%2 < unknown_2;
assert(y > 0);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!(x < 100)) break;
x = x + y;
}
assert(y > 0);
assert(x >= 100);
return 0;
}
