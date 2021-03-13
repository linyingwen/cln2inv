#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//vnew2.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int n, i = 0, k = 0, j = 0;
n = rand()%2 < unknown_1;
assert(n > 0);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, n, i, k, j);
if (!(i < n)) break;
i = i + 3;
j = j + 3;
k = k + 3;
}
assert(i == j);
assert(j == k);
assert(i % 20000003 != 0);
return 0;
}
