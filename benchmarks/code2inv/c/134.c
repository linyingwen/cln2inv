//const_1-1.c
int main(void) {
    int x = 1;
    int y = 0;

    while (y < 1024) {
        x = 0;
        y = y + 1;
    }

    assert(x == 0);
}
