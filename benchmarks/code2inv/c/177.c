//sum01-1.c
int main() {
    int i, n, sn;
    (i = 1);
    (sn = 0);
    assume(n >= 0);
    while(i <= n){
    	if(i < 10)
    	    sn = sn + 2;
    	i = i + 1;
    }
    assert(( (sn == (n * 2)) || (sn == 0)));
}
