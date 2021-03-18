#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//sum01-2.c
int main(int argc, char** argv)
{
int i, n=atoi(argv[1]), sn;
(i = 1);
(sn = 0);
assert(n < 1000);
assert(n >= -1000);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, n, sn);
if (!(i <= n)) break;
sn = sn + 2;
i = i + 1;
}
assert((sn == (n * 2)) || (sn == 0));
}
