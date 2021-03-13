//count_by_1.c
int main() {
    int i = 0;
    while (i < 1000000){
        i = i + 1;
    }
    assert(i == 1000000);
    return 0;
}
