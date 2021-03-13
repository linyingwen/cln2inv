#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//count_by_1.c
int main(int argc, char** argv)
{
int i = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d  \n", 1, while_counter_1++, 1, i);
if (!(i < 1000000)) break;
i = i + 1;
}
assert(i == 1000000);
return 0;
}
