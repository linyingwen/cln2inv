//multivar_1-2.c
int main(void) {
    int x;
    int y;
    (y = (x + 1));

    while ((x < 1024) {
        x = x + 1;
        y = y + 1;
    }

    assert(x == y);
}
