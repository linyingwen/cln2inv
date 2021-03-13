//sum04-2.c
int main() {
    int i = 1, sn = 0;
    while (i <= 8) {
        sn = sn + 2;
        i++;
    }
    assert(sn == 8 * 2 || sn == 0);
}

