//sum04-1.c
int main() {
    int i, sn;
    (i = 1);
    (sn = 0);
    while(i <= 8) {
        if (i < 4)
            sn = sn + 2;
        i = i + 1;
    }
    assert((sn == (8 * 2)) || (sn == 0));
}

