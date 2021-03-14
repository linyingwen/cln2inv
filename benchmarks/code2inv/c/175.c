//count_up_down-1.c
int main() {
    int n;
    (n = 1000000);
    int x, y;
    (x = n);
    (y = 0);
    while (x > 0) {
        x--;
        y++;
    }
    assert(y == n);
}

