#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>

typedef struct _Shoe
{
    int type;
    void (*print_shoe)(struct _Shoe *);
}Shoe;

void print_leather_shoe(struct _Shoe* pShoe){

    assert( NULL != pShoe );
    printf("This is a leather show!\n");
}

void print_rubber_shoe(struct _Shoe* pShoe){
    
    assert(NULL != pShoe);
    printf("This is a rubber shoe！\n");
}


// 所以，对于一个工厂来说，创建什么样的鞋子，就看我们输入的参数是什么？至于结果，那都是一样的。

#define LEATHER_TYPE 0x01
#define RUBBER_TYPE 0x02

Shoe* manufacture_new_shoe(int type){
    
    assert(LEATHER_TYPE == type || RUBBER_TYPE == type);

    Shoe* pShoe = (Shoe*)malloc(sizeof(Shoe));
    assert(NULL != pShoe);

    memset(pShoe, 0, sizeof(Shoe));
    if(LEATHER_TYPE == type){
        pShoe->type == LEATHER_TYPE;
        pShoe->print_shoe = print_leather_shoe;
    }else{
        pShoe->type == RUBBER_TYPE;
        pShoe->print_shoe = print_rubber_shoe;
    }

    return pShoe;
}

int main(int argc, char const *argv[])
{

    Shoe* shoe = manufacture_new_shoe(LEATHER_TYPE);
    shoe->print_shoe(shoe);
    
    return 0;
}
