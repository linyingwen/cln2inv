//simple_4-2.c
int main(void) {
    int x = 0x0ffffff0;

    while (x > 0) {
        x -= 2;
    }

    assert((x % 2) == 0);
}
