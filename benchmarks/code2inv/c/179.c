//sum01_bug02.c
int main() {
    int i = 1, j = 10, n = unknown(), sn = 0;
    while(i <= n){
    	if(i<j)sn = sn + 2;
    	j--;
    }
    assert(sn == n * 2 || sn == 0);
}
