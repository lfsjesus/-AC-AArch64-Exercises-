/*
 ============================================================================
 Name        : count_ocorr
 Author      : Luís Jesus
 Version     :
 Copyright   : 
 Description : Código C de teste (contar nº ocorrencias de um valor num array)
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

long int conta_ocorr(char*v, long int n, char val);

int main(void) {
	char v[] = {45, 0, -4, 5, 6, -7, 31, 24, 45, -13, -5, 23, 45, 67, 87, 45};
	long int dim = 16;
	char valor = 45;
	long int res = conta_ocorr(v, dim, valor);
	printf("%ld\n", res);

	return EXIT_SUCCESS;

}
