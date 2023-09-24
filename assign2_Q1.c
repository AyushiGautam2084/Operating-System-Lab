/*Question:create a new process using fork*/
#include <stdio.h>
#include <unistd.h>
int main()
{
	printf("Hello World\n");
	fork();
	printf("I am after forking\n");
	printf("\t I am process %d.\n",getpid());

}
