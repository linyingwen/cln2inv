//simple_1-2.c
int main(void) {
    int x = 0;

    while (x < 0x0fffffff) {
        x += 2;
    }

    assert((x % 2) == 0);
}
