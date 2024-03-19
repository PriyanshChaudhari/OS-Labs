#include <stdio.h>
#include <stdlib.h>
#define pageSize 4096

int main()
{
    int virtualAddr;

    printf("Enter the virtual address: ");
    scanf("%d", &virtualAddr);

    int pageNo = virtualAddr / pageSize;
    int offset = virtualAddr % pageSize;

    printf("The address %d contains:\n", virtualAddr);
    printf("page number = %d\n", pageNo);
    printf("offset = %d\n", offset);

    return 0;
}
