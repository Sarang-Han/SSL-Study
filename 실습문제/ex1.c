#include <stdio.h>
#include <unistd.h>

int main(){

    int a;
    printf(" 1");

    a = fork();
    execlp("echo", "echo", "2", (char*) 0);

    if(a>0)
        printf("3");

    else execlp("echo", "echo", "4", (char*) 0);
        
    printf("5");
}