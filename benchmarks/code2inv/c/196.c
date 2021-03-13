//vnew2.c
int main() {
    int n, i, k, j;
    (i = 0);
    (k = 0);
    (j = 0);
    assume(n > 0);
    while (i < n) {
        i = i + 3;
        j = j + 3;
        k = k + 3;
    }
    assert(i == j);
    assert(j == k);
    assert(((i % 20000003) != 0));
    return 0;
}

