//simple_vardep_2.c
int main() {
    int i = 0;
    int j = 0;
    int l = 0;

    while (l < 0x0fffffff) {
        i = i + 1;
        j = j + 2;
        l = l + 3;

        //  assert((k == (3*i)));
    }
    assert((l == (3 * i)));
    assert((j == (2 * i)));
}
