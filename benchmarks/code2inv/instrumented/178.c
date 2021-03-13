#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//sum01-2.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int i = 1, n = rand()%2 < unknown_1, sn = 0;
assert(n < 1000);
assert(n >= -1000);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, n, sn);
if (!(i<=n)) break;
sn = sn + a;
}
assert(sn == n * 2 || sn == 0);
}
