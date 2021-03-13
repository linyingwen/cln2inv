//count_up_down-2.c
int main() {
    int n = unknown();
    int x = n, y = 0;
    while (x > 0) {
        x--;
        y++;
    }
    assert(y != n);
}
