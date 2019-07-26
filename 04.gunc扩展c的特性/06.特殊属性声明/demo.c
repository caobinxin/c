#include <stdio.h>

__attribute__((noreturn)) void  test_no_return(){
    for(;;){
    }
} 

int main(int argc, char const *argv[])
{

    struct hello{
        char a;
        short b;
    }  hello_object;
    printf("hello_object sizeof =  %ld\n", sizeof(hello_object));// 4

    struct hello_b{
        char a;
        short b;
    }__attribute__((packed))  hello_object_b;
    printf("hello_object_b sizeof =  %ld\n", sizeof(hello_object_b)); // 3

    // test_no_return();
    return 0;
}
