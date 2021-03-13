#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//count_by_2.c
int main(int argc, char** argv)
{
int i = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d  \n", 1, while_counter_1++, 1, i);
if (!(i<1000000)) break;
i = i + 2;
}
assert(i == 1000000);
return 0;
}
