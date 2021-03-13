#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[3]);
// variable declarations
int x=atoi(argv[1]);
int y=atoi(argv[2]);
// pre-conditions
assert((x >= 0));
assert((x <= 10));
assert((y <= 10));
assert((y >= 0));
// loop body
int while_counter_1 = 0;
int x0 = x;
int y0 = y;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y, x0, y0);
if (!(rand()%2 < unknown_1)) break;
{
(x  = (x + 10));
(y  = (y + 10));
}
}
// post-condition
if ( (x == 20) )
assert( (y != 0) );
}
