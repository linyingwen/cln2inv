//Mono1_1-1.c
int main(void) {
	int x = 0;

	while (x < 100000000) {
		if (x < 10000000) {
			x++;
		} else {
			x += 2;
		}
	}

	assert(x == 100000001) ;
}
