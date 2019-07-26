#include <stdlib.h>
#include <stdio.h>

typedef struct s
{   
    int n;
    int array[0];
} s_t;


void test_space(){
    s_t a; // 这里没有独自对　array开辟空间
    if( sizeof(a) == 4){
        printf("struct s 中的柔性数组array 如果不动态分配是不占空间的\n");
    }else
    {
        printf("struct s 中的柔性数组array 如果不动态分配是 占空间的！！！\n");
    }
}

void test_malloc(){
    int len = 16;
    s_t *a = malloc(sizeof(s_t) + sizeof(int [len]));
    a->n = len;

    a->array[15] = 15;
    printf("malloc size = %ld\n", sizeof(*a));// 这里居然打印的是4, 也就是说　sizeof居然检测不出来
    printf("array[15]　=　%d\n", a->array[15]);
}

int main(int argc, char const *argv[])
{
    
    test_malloc();
    return 0;
}
