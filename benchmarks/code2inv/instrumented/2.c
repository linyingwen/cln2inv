#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
int main(int argc, char** argv)
{
// variable declarations
int x;
int y;
// pre-conditions
(x = 1);
(y = 0);
// loop body
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, x, y);
if (!((y < 1000))) break;
{
(x  = (x + y));
(y  = (y + 1));
}
}
// post-condition
assert( (x >= y) );
}
