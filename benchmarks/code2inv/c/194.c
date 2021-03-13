//mono-crafted_12.c
int main() {
    int x = 0;
    int y = 10000000;
    int z = 0;
    while (x < y) {
        if (x >= 5000000)
            z = z + 2;
        x++;
    }
    assert((z % 2) == 0);
    return 0;
}
