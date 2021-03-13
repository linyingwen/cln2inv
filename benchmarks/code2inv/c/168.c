//gsv2008.c
int main() {
    int x, y;
    x = -50;
    y = unknown();
    assume(-1000 < y);
    assume(y < 1000000);
    while (x < 0) {
        x = x + y;
        y++;
    }
    assert(y > 0);
    return 0;
}
