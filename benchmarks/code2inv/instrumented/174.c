#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//count_by_k.c
int main(int argc, char** argv)
{
int i;
int l=atoi(argv[1]);
assert(l >= 0);
assert(l <= 10);
(i = 0);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, i, l);
if (!(i < 1000000*l)) break;
i = i + l;
}
assert((i == (1000000 * l)));
return 0;
}
