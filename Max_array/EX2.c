/*
COMPUTING THE GREATEST ELEMENT OF AN ARRAY
 */

#include <stdio.h>
#include <stdlib.h>

extern int MAX(long *a, int b);

int main(void) {
	int dim = 7;
	long v[] = {1, 0, -1, 8, -9, 4, 10};
	long res;
	res = MAX(v, dim);
	printf("O maximo é: %ld\n", res);
	return EXIT_SUCCESS;
}
