//underapprox_2-1.c
int main(void) {
    int x = 0;
    int y = 1;

    while (x < 6) {
        x++;
        y *= 2;
    }

    assert(x != 6);
}
