#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//simple_2-2.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int x = rand()%2 < unknown_1;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d  \n", 1, while_counter_1++, 1, x);
if (!(x < 0x0fffffff)) break;
x++;
}
assert(x > 0x0fffffff);
}
