#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <time.h>
//hhk2008.c
int main(int argc, char** argv)
{
srand(time(0));
int unknown_1 = atoi(argv[1]);
int unknown_2 = atoi(argv[2]);
int a = rand()%2 < unknown_1;
int b = rand()%2 < unknown_2;
int res, cnt;
assert(a <= 1000000);
assert(0 <= b);
assert(b <= 1000000);
res = a;
cnt = b;
int while_counter_1 = 0;
while (while_counter_1 < 50)
{
printf("%d , %d , %d , %d , %d , %d , %d  \n", 1, while_counter_1++, 1, a, b, res, cnt);
if (!(cnt > 0)) break;
cnt = cnt - 1;
res = res + 1;
}
assert(res == a + b);
return 0;
}
