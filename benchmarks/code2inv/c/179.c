//sum01_bug02.c
int main() {
    int i, j, n, sn;
    (i = 1);
    (j = 10);
    (sn = 0);
    assume(n >= 0);
    while(i <= n){
    	if(i < j)sn = sn + 2;
    	j = j - 1;
    	i = i + 1;
    }
    assert(((sn == (n * 2)) || sn == 0));
}
