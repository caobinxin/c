#include <assert.h>
#include <stdlib.h>
#include <stdio.h>

typedef struct _DATA{
    void *pData;
    void (*func)();
}DATA;

void func(){
    printf("DATA::func()...\n");
}

void* get_data(){
    static DATA* pData = NULL;

    if(NULL != pData){
        return pData;
    }

    pData = (DATA*)malloc(sizeof(DATA));
    assert(NULL != pData);
    pData->func = func;
    return (void *)pData;
}



int main(int argc, char const *argv[])
{
    DATA* dObject = get_data();
    dObject->func();

    return 0;
}
