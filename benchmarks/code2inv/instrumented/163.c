#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//bhmr2007.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int unknown_2 = atoi(argv[2]);
int i, n, a, b;
i = 0;
a = 0;
b = 0;
n = rand()%2 < unknown_1;
assert(n >= 0);
assert(n <= 1000000);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, n, a, b);
if (!(i < n)) break;
if (rand()%2 < unknown_2)
{
a = a + 1;
b = b + 2;
}
else
{
a = a + 2;
b = b + 1;
}
i = i + 1;
}
assert(a + b == 3 * n);
return 0;
}
