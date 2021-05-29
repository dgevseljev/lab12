#include <stdio.h>
#include <stdlib.h>

int main(void) {
	int a;
	
	printf("Enter the integer:\n");
	if (scanf("%d", &a) != 1) {
		printf("Incorrect input\n");
		exit(-1);
	}
	
	if (a > 0) 	
		exit(0);
	
	if (a < 0) 
		exit(1);
	
	else 
		exit(2);
}