//diamond_1-1.c
int main(void) {
    int x;
    int y;
    (x = 0);
    assume(y >= 0);

    while (x < 99) {
        if (((y % 2) == 0)) {
            x = x + 2;
        } else {
            x = x + 1;
        }
    }

    assert(((x % 2) == (y % 2)));
}
