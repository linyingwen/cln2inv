//count_by_2.c
int main() {
    int i = 0;
    while (i < 1000000){
        i = i + 2;
    }
    assert(i == 1000000);
    return 0;
}
