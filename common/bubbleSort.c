#include <stdio.h>

void  BubbleSort(char *buff,int len)
{
    int i ,k;
    for( i=0;i<len-1;i++)
        for( k=i+1;k<len;k++)
            if(buff[i]<buff[k])
            {
                char b = buff[k];
                buff[k] = buff[i];
                buff[i] =b;
            }
}
