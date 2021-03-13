//mono-crafted_10.c
int main(void) {
    int x = 0;
    int y = 10000000;
    int z = 5000000;
    while (x < y) {
        if (x >= 5000000)
            z++;
        x++;
    }
    assert(z == x);
    return 0;
}
