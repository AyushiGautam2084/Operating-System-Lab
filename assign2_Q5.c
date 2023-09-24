#include<stdio.h>
#include <sys/wait.h>
#include<stdlib.h>
#include <unistd.h>
int main()
{
	int forkresult;
	printf("%d:I am the parent.Remember my number!\n",getpid());
	printf("%d:I am not going to fork...\n",getpid());
	forkresult=fork();
	if(forkresult!=0)
	{
		printf("%d: My child's pid is %d\n", getpid(), forkresult);
	}
	else
	{
		printf("%d: Hi! I am the child.\n", getpid());
	}
	printf("%d: like father like son. \n", getpid());
}	
