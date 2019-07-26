#include <stdio.h>

// 当可变参数arg被忽略或者为空，printf函数中的 ##　操作将迫使预处理去掉它前面的那个逗号。
// 如果在调用宏函数时，确实提供了若干个可变参数，那么GNU C 会把这些可变参数放到逗号后面，使其能够正常工作。

#define pr_debug(fmt, arg...) \
    printf(fmt, ##arg);

int main(int argc, char const *argv[])
{
    pr_debug("caobinxin\n");
    pr_debug("ca%cb%cnxi%c\n", 'o', 'i', 'n');
    return 0;
}
