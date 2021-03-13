//loopv1.c
int main() {
    int n, i, j;
    n = unknown();
    assume(n > 0);
    i = 0;
    j = 0;
    while (i < n) {

        if (unknown())
            i = i + 6;
        else
            i = i + 3;
    }
    assert((i % 3) == 0);
    return 0;
}
