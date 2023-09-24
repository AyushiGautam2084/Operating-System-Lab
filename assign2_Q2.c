/*Question: WAP to print the PID of parent and child process*/
#include <stdio.h>
#include <unistd.h>
int main()
{
	int pid;
	printf("Hello World\n");
	printf("I am the parent process and pid is %d.\n",getpid());
	printf("Here I am before use of forking\n");
	pid = fork();
	printf("Here I am just after forking\n");
	if(pid==0)
		printf("I am the child process and the pid is :%d.\n",getpid());
	else
		printf("I am the parent process and the pid is %d.\n",getpid());
}
