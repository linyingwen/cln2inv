#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//count_up_down-1.c
int main(int argc, char** argv)
{
int n = 1000000;
assert(n > 0);
int x = n, y = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, n, x, y);
if (!(x > 0)) break;
x--;
y++;
}
assert(y == n);
}
