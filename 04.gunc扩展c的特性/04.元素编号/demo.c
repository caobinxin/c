#include <stdio.h>

#define MAX 56
unsigned char data[MAX] =
{
    [0]=10,
    [10 ... 50]=100,
    [55]=55,
};


struct demo
{
    int *a;
    int *aa;
    int *aaa;
    int *aaaa;
};

int main(int argc, char const *argv[])
{
    int b = 66;
    struct demo demo = {
        aa:&b,
        aaaa:&b,
        .aaa = &b,
        .a = &b
    };

    printf("%d %d %d %d\n", *demo.aa, *demo.a, *demo.aaa, *demo.aaaa);


    for(int i = 0; i < MAX; i++){
        printf("%d ", data[i]);
    }
    return 0;
}
