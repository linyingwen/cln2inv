//eq1.c
int main(void) {
    int w = unknown();
    int x = w;
    int y = unknown();
    int z = y;
    while (unknown()) {
        if (unknown()) {
            ++w;
            ++x;
        } else {
            --y;
            --z;
        }
    }
    assert(w == x);
    assert(y == z);
    return 0;
}
