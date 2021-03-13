#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//const_1-2.c
int main(int argc, char** argv)
{
int x = 1;
int y = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!(y < 1024)) break;
x = 0;
y++;
}
assert(x == 0);
}
