//simple_1-1.c
int main(void) {
    int x = 0;

    while (x < 0x0fffffff) {
        x += 2;
    }

    assert(x % 2 == 1);
}
