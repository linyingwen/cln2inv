//cggmp2005_variant.c
int main() {
    int lo, mid, hi;
    lo = 0;
    mid = unknown();
    assume(mid > 0);
    assume(mid <= 1000000);
    hi = 2 * mid;
    while (mid > 0) {
        lo = lo + 1;
        hi = hi - 1;
        mid = mid - 1;
    }
    assert(lo == hi);
    return 0;
}
