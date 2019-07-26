#include <stdio.h>

int main(int argc, char const *argv[])
{
    printf("%s\n", __FUNCTION__);
    printf("%s\n", __func__);
    printf("%s\n", __PRETTY_FUNCTION__);
    return 0;
}
