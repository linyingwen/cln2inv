#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//eq2.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int unknown_2 = atoi(argv[2]);
int w = rand()%2 < unknown_1;
int x = w;
int y = w + 1;
int z = x + 1;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, w, x, y, z);
if (!(rand()%2 < unknown_2)) break;
y++;
z++;
}
assert(y == z);
return 0;
}
