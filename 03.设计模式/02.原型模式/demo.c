#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>

typedef struct _DATA{
    char* name;
    struct _DATA* (*copy)(struct _DATA* pData);
}DATA;

struct _DATA* data_copy_A(struct _DATA* pData);

DATA data_A = {"曹斌鑫",data_copy_A};

struct _DATA* data_copy_A(struct _DATA* pData){
    
    DATA* pResult = (DATA*)malloc(sizeof(DATA));
    assert(NULL != pResult);
    memmove(pResult, pData, sizeof(DATA));

    pResult->name = "copy_曹斌鑫";
    return pResult;
}

struct _DATA* clone(struct _DATA* pData){
    return pData->copy(pData);
}


int main(int argc, char const *argv[])
{
    DATA *cp_ob = clone(&data_A);

    printf("obj: %s\tcp_obj:%s\n", data_A.name, cp_ob->name);
    return 0;
}
