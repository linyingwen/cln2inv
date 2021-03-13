//overflow_1-1.c
int main(void) {
    int x = 10;

    while (x >= 10) {
        x += 2;
    }

    assert((x % 2) == 0);
}
