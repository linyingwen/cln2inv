//diamond_1-1.c
int main(void) {
    int x = 0;
    int y = unknown();

    while (x < 99) {
        if (y % 2 == 0) {
            x += 2;
        } else {
            x++;
        }
    }

    assert(((x % 2) == (y % 2)));
}
