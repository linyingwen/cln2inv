//bhmr2007.c
int main() {
    int i, n, a, b;
    i = 0;
    a = 0;
    b = 0;
    n = unknown();
    assume(n >= 0);
    assume(n <= 1000000);
    while (i < n) {
        if (unknown()) {
            a = a + 1;
            b = b + 2;
        } else {
            a = a + 2;
            b = b + 1;
        }
        i = i + 1;
    }
    assert(a + b == 3 * n);
    return 0;
}
