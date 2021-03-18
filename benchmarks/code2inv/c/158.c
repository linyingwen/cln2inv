//eq2.c
int main(void) {
    int w;
    int x;
    int y;
    int z;
    (x = w);
    (y = (w + 1));
    (z = (x + 1));
    while (unknown()) {
        y = y + 1;
        z = z + 1;
    }
    assert(y == z);
    return 0;
}
