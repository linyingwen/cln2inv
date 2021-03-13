//Mono3_1.c
int main(void) {
    int x = 0;
    int y = 0;
    while (x < 1000000) {
        if (x < 500000) {
            y++;
        } else {
            y--;
        }
        x++;
    }
    assert(y != 0);
}
