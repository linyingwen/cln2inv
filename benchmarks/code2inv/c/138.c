//multivar_1-1.c
int main(void) {
    int x = unknown();
    int y = x;

    while (x < 1024) {
        x = x + 1;
        y = y + 1;
    }

    assert(x == y);
}
