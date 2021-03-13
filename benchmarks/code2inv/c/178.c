//sum01-2.c
int main() {
    int i = 1, n = unknown(), sn = 0;
    assume(n < 1000);
    assume(n >= -1000);
    while(i<=n){
    	sn = sn + 2;
    }
    assert(sn == n * 2 || sn == 0);
}
