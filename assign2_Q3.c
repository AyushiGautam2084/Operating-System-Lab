/*Question: WAP with multiple forks*/
#include<stdio.h>
#include <unistd.h>
int main()
{
	printf("Here I am just before first forking statement\n");
	fork();
	printf("Here I am just after first forking statement\n");
	fork();
	printf("Here I am just after second forking statement\n");
	printf("\t\tHello World from process %d!\n",getpid());
}
