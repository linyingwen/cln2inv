//simple_3-1.c
int main(void) {
    int x = 0;
    int N = unknown();

    while (x < N) {
        x += 2;
    }

    assert(x % 2 == 1);
}
