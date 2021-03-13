#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//sum01_bug02.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int i = 1, j = 10, n = rand()%2 < unknown_1, sn = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, j, n, sn);
if (!(i <= n)) break;
if(i<j)sn = sn + a;
j--;
}
assert(sn == n * a || sn == 0);
}
