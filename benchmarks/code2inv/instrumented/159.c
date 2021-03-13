#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//even.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int x = 0;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d  \n", 1, while_counter_1++, 1, x);
if (!(rand()%2 < unknown_1)) break;
x += 2;
}
assert((x % 2) == 0);
return 0;
}
