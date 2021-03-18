//sum01-2.c
int main() {
    int i, n, sn;
    (i = 1);
    (sn = 0);
    assume(n < 1000);
    assume(n >= -1000);
    while(i <= n){
    	sn = sn + 2;
    	i = i + 1;
    }
    assert((sn == (n * 2)) || (sn == 0));
}
