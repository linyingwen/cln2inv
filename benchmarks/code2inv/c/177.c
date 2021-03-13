//sum01-1.c
int main() {
    int i = 1, n = unknown(), sn = 0;
    assume(n >= 0);
    while(i<=n){
    	if(i<10)sn = sn + 2;
    	i++;
    }
    assert(sn == n * 2 || sn == 0);
}
