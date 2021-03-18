#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//sum01_bug02.c
int main(int argc, char** argv)
{
int i, j, n=atoi(argv[1]), sn;
(i = 1);
(j = 10);
(sn = 0);
assert(n >= 0);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, j, n, sn);
if (!(i <= n)) break;
if(i < j)sn = sn + 2;
j = j - 1;
i = i + 1;
}
assert(((sn == (n * 2)) || sn == 0));
}
