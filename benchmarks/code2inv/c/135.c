//const_1-2.c
int main(void) {
    int x = 1;
    int y = 0;

    while (y < 1024) {
        x = 0;
        y++;
    }

    assert(x == 1);
}
