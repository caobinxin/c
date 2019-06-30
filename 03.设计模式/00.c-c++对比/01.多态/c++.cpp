#include <iostream>
#include <stdlib.h>

class Persion{

    public:
        virtual void gettooth(){
            printf("牙齿\n");
        }
};

class Woman:public Persion{
    public:
        void gettooth(){
            printf("女人的白牙\n");
            printf("echo Woman::gettooth success.\n");
        }
};

class Man: public Persion{
    public:
        void gettooth(){
            printf("男人的虎牙\n");
            printf("echo Man::gettooth success.\n");
        }
};

class Child:public Persion{

};

int main(int argc, char const *argv[])
{
    Woman woman;
    woman.gettooth();
    woman.Persion::gettooth();

    Man man;
    man.gettooth();
    man.Persion::gettooth();

    Child child;
    child.gettooth();
    child.Persion::gettooth();
    return 0;
}
