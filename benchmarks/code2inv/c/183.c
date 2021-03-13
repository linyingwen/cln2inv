//terminator_03-2.c
int main() {
    int x = unknown();
    int y = unknown();

    assume(y > 0);
    while (x < 100) {
        x = x + y;
    }
    assert(y > 0);
    assert(x >= 100);

    return 0;
}


