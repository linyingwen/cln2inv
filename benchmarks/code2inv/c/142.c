//phases_1-2.c
int main(void) {
    int x = 0;

    while (x < 0x0fffffff) {
        if (x < 0xfff1) {
            x++;
        } else {
            x += 2;
        }
    }

    assert((x % 2) == 0);
}
