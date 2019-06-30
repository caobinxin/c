#include <iostream>
#include <string>

using namespace std;

class Person{
    public:
    void hello(){
        cout << "Person::hello()..." << endl;
    }

    virtual void world(){
        cout << "Person::world()..." << endl;
    }
};

class Man: public Person{
    public:
    void hello(){
        cout << "Man::hello()..." << endl;
    }

    void world(){
        cout << "Man::world()..." << endl;
    }
};

int main(int argc, char const *argv[])
{
    Person *p = new Man;
    p->hello();
    p->world();


    
    return 0;
}


/***
 * 
 * 总结一下：
 *      虚函数是实现 多态的关键。
 *      如果不是需函数，将调用的是 父类中的函数
 */