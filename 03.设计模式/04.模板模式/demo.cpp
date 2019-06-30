#include <string>
#include <iostream>

class basic{

public:
    basic(){};
    ~basic(){};

    virtual void step1(){}
    virtual void step2(){}

    virtual void process(){
        step1();
        step2();
    }
};

class data_A : public basic{
    public:
        data_A(){}
        ~data_A(){}

        void step1(){
            printf("step 1 in data_A!\n");
        }

        void step2(){
            printf("step 2 in data_A!\n");
        }
};

int main(int argc, char const *argv[])
{
    basic *b = new data_A;
    
    b->process();
    return 0;
}