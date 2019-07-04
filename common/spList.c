#include <stdio.h>
#include "spList.h"



SpList slt;


int SpListIsEmpty(SpList *sl)
{
    return sl->length==0? 1:0;
}

int SpListIsFull(SpList *sl)
{
    return sl->length==MAXSiZE ? 1:0;
}

int SpListIsAild(SpList *sl)
{
    return (sl->length==MAXSiZE) || (sl->length==0) ? 0:1;
}


void SplistPrintf(SpList *sl,char *str)
{
    int i;
    for(i=0;i<sl->length;i++)
        printf(str,sl->elem[i]);

}

int SplistFind(SpList *sl, DataType el)
{
    int i;
    for(i=0;i<sl->length;i++)
        if(sl->elem[i] == el)
             return i;
    return 0;
}

int SplistInsert(SpList *sl, DataType el,int off)
{
    int i;
    if(off+1>MAXSiZE)
        return 0;
    for(i = sl->length;i>off;i--)
        sl->elem[i] = sl->elem[i-1] ;
    sl->elem[off] = el;

    sl->length++;

    return 1;
}

int SplistDel(SpList *sl,int off)
{
    int i;
    if(off>MAXSiZE)
        return 0;
    for(i = off;i<sl->length;i--)
        sl->elem[i] = sl->elem[i+1] ;
    sl->length-=1;
    return 1;
}

