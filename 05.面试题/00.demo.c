
#include <stdio.h>
#include <stdlib.h>

#define ERROR 1

/**
 * ERROR : 1 是一中错误的，　问题是：　为啥test　中的printf没有打印输出
 * 
 * ERROR : 0 是这个答案的解
*/

#if ERROR
void get_memory(char *p){
    p = (char *)malloc(100);
    strcpy(p, "hello world");
    printf(p);
}
#else
void get_memory(char **p){
    *p = (char *)malloc(100);
    strcpy(*p, "hello world");
    printf(*p);


}
#endif

void test(void){
    char *str = NULL;
#if ERROR
    get_memory(str);
#else
    get_memory(&str);
#endif

    printf(str);
    
}

int main(int argc, char const *argv[])
{
    test();
    return 0;
}
