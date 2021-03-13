//underapprox_1-2.c
int main(void) {
    int x = 0;
    int y = 1;

    while (x < 6) {
        x++;
        y *= 2;
    }

    assert((y % 3) != 0);
}
