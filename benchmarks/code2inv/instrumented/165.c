#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//cggmp2005_variant.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int lo, mid, hi;
lo = 0;
mid = rand()%2 < unknown_1;
assert(mid > 0);
assert(mid <= 1000000);
hi = 2 * mid;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, lo, mid, hi);
if (!(mid > 0)) break;
lo = lo + 1;
hi = hi - 1;
mid = mid - 1;
}
assert(lo == hi);
return 0;
}
