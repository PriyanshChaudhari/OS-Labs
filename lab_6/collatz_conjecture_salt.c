#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

void cc(int seq, pid_t p)
{
    printf("seq: ");
    while (seq != 1)
    {
        if (seq == 1)
            break;
        if (p == 0)
        {
            if (seq % 2 == 0)
            {
                seq = seq / 2;
            }
            else
            {
                seq = (3 * seq) + 1;
            }
            printf("%d\t", seq);
        }
        else
        {
            wait(NULL);
            break;
        }
    }
    printf("done %d\n", p);
}

void main()
{
    int input = 8, seq = 0, intm_seq, salt = 3, rep = 4;
    pid_t p;
    printf("Enter a number: ");
    scanf("%d", &input);
    printf("Enter salt: ");
    scanf("%d", &salt);
    seq = intm_seq = input;

    p = fork();
    if (p == 0)
    {
        printf("intm_seq: %d\n", intm_seq);
        cc(seq, p);
        for (int i = 0; i < salt; i++)
        {
            intm_seq = intm_seq + salt;
            printf("intm_seq: %d\n", intm_seq);
            if ((i == (salt - 1)))
            {
                seq = intm_seq;
                cc(seq, p);
            }
        }
    }
}
