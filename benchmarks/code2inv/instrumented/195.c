#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//vnew1.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int n, i, j;
n = rand()%2 < unknown_1;
assert(n > 0);
j = n;
i = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, n, i, j);
if (!(i < n)) break;
j--;
i = i + 3;
}
assert(j >= 0);
return 0;
}
