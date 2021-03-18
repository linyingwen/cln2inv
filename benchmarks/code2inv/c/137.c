//diamond_1-2.c
int main(void) {
    int x;
    int y;
    (x = 0);
    assume(y >= 0);
    while (x < 99) {
        if (y % 2 == 0) {
            x = x + 1;
        } else {
            x = x + 2;
        }
    }

    assert((x % 2) == (y % 2));
}
