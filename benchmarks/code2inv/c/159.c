//even.c
int main(void) {
    int x = 0;
    while (unknown()) {
        x += 2;
    }
    assert((x % 2) == 0);
    return 0;
}
