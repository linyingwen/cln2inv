//count_by_k.c
int main() {
    int i;
    int l;
    assume(l >= 0);
    assume(l <= 10);
    (i = 0);
    while (i < 1000000*l){
        i = i + l;
    }
    assert((i == (1000000 * l)));
    return 0;
}
