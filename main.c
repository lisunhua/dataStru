#include <stdio.h>
#include "bubbleSort.h"





char data[] = {35,56,3,5,2,9,0,6};

int main()
{
    int i;
    printf("start \r\n");
    BubbleSort(data,sizeof(data));

    for( i=0;i<sizeof(data);i++)
        printf("%d,",data[i]);
    printf("\n");
    return 0 ;
}


