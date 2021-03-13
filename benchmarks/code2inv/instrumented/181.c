#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//sum04-2.c
int main(int argc, char** argv)
{
int i = 1, sn = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, sn);
if (!(i <= 8)) break;
sn = sn + 2;
i++;
}
assert(sn == 8 * 2 || sn == 0);
}
