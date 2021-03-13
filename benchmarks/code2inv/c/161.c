//odd.c
int main(void) {
    int x = 1;
    int cond = unknown();;
    while (cond != 0) {
        x += 2;
    }
    assert(x % 2 == 1);
    return 0;
}
