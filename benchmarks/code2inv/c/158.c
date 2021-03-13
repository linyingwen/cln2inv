//eq2.c
int main(void) {
    int w = unknown();
    int x = w;
    int y = w + 1;
    int z = x + 1;
    while (unknown()) {
        y++;
        z++;
    }
    assert(y == z);
    return 0;
}
