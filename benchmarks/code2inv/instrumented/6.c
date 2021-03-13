#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
int main(int argc, char** argv)
{
int v1, v2, v3;
int x = 0;
int size=atoi(argv[1]);
int y=atoi(argv[2]), z=atoi(argv[3]);
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, size, y, z);
if (!(x < size)) break;
x += 1;
if( z <= y)
{
y = z;
}
}
//post-condition
if(size > 0)
{
assert (z >= y);
}
}
