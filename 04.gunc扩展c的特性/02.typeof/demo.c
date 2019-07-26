#include <stdio.h>


// (typeof(x)* == int*

#define READ_ONE(x) (*((typeof(x)*)(&x)))  
// READ_ONE这个宏是借鉴内核的　，这样在访问a这个变量的时候，可以保证每次都是从　内存中去哪的，而不是从寄存器中，这样就能确保正确性


int main(int argc, char const *argv[])
{
    int a = 100;
    a = READ_ONE(a);

    printf("a = %d\n", a);
    return 0;
}



/***
 * 
 * 这里附上　kernel 4.19.50　中的定义
*/

typedef __signed__ char __s8;
typedef unsigned char __u8;                                                                                                                                                                                        

typedef __signed__ short __s16;
typedef unsigned short __u16;

typedef __signed__ int __s32;
typedef unsigned int __u32;

typedef __signed__ long __s64;
typedef unsigned long __u64;




#define __READ_ONCE_SIZE \
({\
    switch (size) {\
    case 1: *(__u8 *)res = *(volatile __u8 *)p; break;\
    case 2: *(__u16 *)res = *(volatile __u16 *)p; break;\
    case 4: *(__u32 *)res = *(volatile __u32 *)p; break;\
    case 8: *(__u64 *)res = *(volatile __u64 *)p; break;\
    }\
}) 

static __always_inline 
void __read_once_size_nocheck(const volatile void *p, void *res, int size)
{
    __READ_ONCE_SIZE;
}

static __always_inline
void __read_once_size(const volatile void *p, void *res, int size)
{
    __READ_ONCE_SIZE;
}

#define __READ_ONCE(x, check)                       \
({                                  \
    union { typeof(x) __val; char __c[1]; } __u;            \
    __read_once_size(&(x), __u.__c, sizeof(x));     \
    __u.__val;                          \
})
#define READ_ONCE(x) __READ_ONCE(x, 1)





static __always_inline void __write_once_size(volatile void *p, void *res, int size)                                                                                                                           
{
    switch (size) {
    case 1: *(volatile __u8 *)p = *(__u8 *)res; break;
    case 2: *(volatile __u16 *)p = *(__u16 *)res; break;
    case 4: *(volatile __u32 *)p = *(__u32 *)res; break;
    case 8: *(volatile __u64 *)p = *(__u64 *)res; break;
    }
}


#define WRITE_ONCE(x, val) \
({                          \
    union { typeof(x) __val; char __c[1]; } __u =   \
        { .__val = (__force typeof(x)) (val) }; \
    __write_once_size(&(x), __u.__c, sizeof(x));    \
    __u.__val;                  \
})


/**
 *  kernel 4.14.15 中的
 * 
 * If possible use READ_ONCE()/WRITE_ONCE() instead.
 */
#define __ACCESS_ONCE(x) ({ \
     __maybe_unused typeof(x) __var = (__force typeof(x)) 0; \
    (volatile typeof(x) *)&(x); })
#define ACCESS_ONCE(x) (*__ACCESS_ONCE(x))


/**
 *  这里看到在kernel4.19中将这个变得好复杂，其实要实现的功能都是一样的
 * 
*/