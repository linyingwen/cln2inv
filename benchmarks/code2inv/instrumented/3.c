#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
int main(int argc, char** argv)
{
int x = 0;
int y=atoi(argv[1]), z=atoi(argv[2]);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y, z);
if (!(x < 5)) break;
x += 1;
if( z <= y)
{
y = z;
}
}
//post-condition
assert (z >= y);
}
