#include <stdio.h>
#include <stdlib.h>

typedef struct _Basic{
    void *pData;
    void (*step1)(struct _Basic* pBasic);
    void (*step2)(struct _Basic* pBasic);
    void (*process)(struct _Basic* pBasic);
}Basic;

void process(struct _Basic* pBasic){
    pBasic->step1(pBasic);
    pBasic->step2(pBasic);
}

void step1(struct _Basic* pBasic){
    printf("step1...\n");
}

void step2(struct _Basic* pBasic){
    printf("step2...\n");
}

int main(int argc, char const *argv[])
{
    Basic ba;
    
    ba.step1 = step1;
    ba.step2 = step2;

    process(&ba);
    
    return 0;
}
