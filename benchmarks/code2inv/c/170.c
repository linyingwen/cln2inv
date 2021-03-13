//jm2006.c
int main() {
    int i, j;
    i = unknown();
    j = unknown();
    assume(i >= 0);
    assume(j >= 0);
    assume(i == j);
    int x = i;
    int y = j;
    while (x != 0) {
        x--;
        y--;
    }

    assert(y == 0);
    return 0;
}
