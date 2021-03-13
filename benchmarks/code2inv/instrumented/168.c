#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//gsv2008.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int x, y;
x = -50;
y = rand()%2 < unknown_1;
assert(-1000 < y);
assert(y < 1000000);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!(x < 0)) break;
x = x + y;
y++;
}
assert(y > 0);
return 0;
}
