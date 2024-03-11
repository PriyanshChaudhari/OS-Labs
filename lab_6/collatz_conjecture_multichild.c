#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

void main(){
    int input, seq=0;
    pid_t p;
    printf("Enter a number: ");
    scanf("%d", &input);
    seq = input;
    
    while(seq!=1){
        p = fork();
        if (seq==1) break;
        if(p==0){
            if(seq%2==0){
                seq=seq/2;
            }
            else{
                seq=(3*seq)+1;
            }
            // printf("child pid: %d\n", p);
            printf("%d\t", seq);
        }
        else{
            wait(NULL);
            break;
        }
    }
    printf("done %d\n", p);
}
