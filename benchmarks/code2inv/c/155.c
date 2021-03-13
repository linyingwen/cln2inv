//simple_vardep_1.c
int main() {
    int i = 0;
    int j = 0;
    int l = 0;

    while (l < 0x0fffffff) {
        i = i + 1;
        j = j + 2;
        l = l + 3;

        assert(l == (i + j));
    }

}
