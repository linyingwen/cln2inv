#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//sum04-1.c
int main(int argc, char** argv)
{
int i, sn;
(i = 1);
(sn = 0);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, sn);
if (!(i <= 8)) break;
if (i < 4)
sn = sn + 2;
i = i + 1;
}
assert((sn == (8 * 2)) || (sn == 0));
}
