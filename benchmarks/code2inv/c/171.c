//jm2006_variant.c
int main() {
    int i, j;
    i = unknown();
    j = unknown();
    assume(i >= 0);
    assume(i <= 1000000);
    assume(j >= 0);
    assume(j == i);
    int x = i;
    int y = j;
    int z = 0;
    while (x != 0) {
        x--;
        y -= 2;
        z++;
    }
    assert(y == -z);
    return 0;
}
