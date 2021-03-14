#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//count_up_down-2.c
int main(int argc, char** argv)
{
int n=atoi(argv[1]);
int x, y;
(x = n);
(y = 0);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, n, x, y);
if (!(x > 0)) break;
x--;
y++;
}
assert(y != n);
}
