#include <string.h>
#include <iostream>

class cmd{
    public:
        char *p;
        
    public:
        void run(){
            system(p);
        }

        void print(){
            std::cout<< p << std::endl;
        }
};

class newcmd : public cmd
{
    public:

        int getLength(){
            return strlen(this -> p);
        }
};

int main(int argc, char const *argv[])
{
    newcmd cmd1;

    cmd1.p = "ls";
    cmd1.run();
    cmd1.print();

    std::cout << cmd1.getLength() << std::endl;

    system("pause");
    return 0;
}
