//afnp2014.c
int main() {
    int x = 1;
    int y = 0;
    while (y < 1000) {
        x = x + y;
        y = y + 1;
    }
    assert(x >= y);
    return 0;
}
