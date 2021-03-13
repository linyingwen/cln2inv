//simple_2-2.c
int main(void) {
    int x = unknown();

    while (x < 0x0fffffff) {
        x++;
    }

    assert(x > 0x0fffffff);
}
