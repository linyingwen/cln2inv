//vnew1.c
int main() {
    int n, i, j;
    n = unknown();
    assume(n > 0);
    j = n;
    i = 0;
    while (i < n) {
        j--;
        i = i + 3;
    }
    assert(j >= 0);
    return 0;
}
