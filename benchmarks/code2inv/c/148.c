//simple_3-2.c
int main(void) {
    int x = 0;
    int N = unknown();

    while (x < N) {
        x += 2;
    }

    assert(x % 2 == 0);
}
