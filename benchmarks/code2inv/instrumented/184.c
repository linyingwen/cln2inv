#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//loopv1.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int unknown_2 = atoi(argv[2]);
int n, i, j;
n = rand()%2 < unknown_1;
assert(n > 0);
i = 0;
j = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, n, i, j);
if (!(i < n)) break;
if (rand()%2 < unknown_2)
i = i + 6;
else
i = i + 3;
}
assert((i % 3) == 0);
return 0;
}
