//mono-crafted_11.c
int main() {
    int x = 0;

    while (x < 100000000) {
        if (x < 10000000) {
            x++;
        } else {
            x += 2;
        }
    }

    assert((x % 2) == 0);
    return 0;
}
