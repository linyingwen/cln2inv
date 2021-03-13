//hhk2008.c
int main() {
    int a;
    int b;
    int res, cnt;
    assume(a <= 1000000);
    assume(0 <= b);
    assume(b <= 1000000);
    (res = a);
    (cnt = b);
    while (cnt > 0) {
        cnt = cnt - 1;
        res = res + 1;
    }
    assert((res == (a + b)));
    return 0;
}
