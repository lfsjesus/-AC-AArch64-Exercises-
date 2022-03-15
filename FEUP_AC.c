/*
 ============================================================================
 Name        : FEUP_AC.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */
#include <stdio.h>
#include <stdlib.h>

extern int SOMA(int *a, int n);

int main(void)
{
	int dim = 5;
	int v[] = {3, -1, 8, 0, -3};
	int res;
	res = SOMA(v, dim);
	printf("MÁXIMO = %d\n", res);
	return EXIT_SUCCESS;
}
