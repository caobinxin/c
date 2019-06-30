#include <string>
#include <assert.h>
#include <iostream>
using namespace std;

class object{

public:
    static class object* pObject;// 声明

    static object* create_new_object(){
        if(NULL != pObject){
            return pObject;
        }

        pObject = new object;
        
        assert(NULL != pObject); /* 断言， 如果 不满足断言中的条件  NULL != pObject 就会抛出 */
        return pObject;
    }

    void object_print(){
        cout << "object::object_print ..." << endl;
    }

private:
    object(){}
    ~object(){}
};

class object* object::pObject = NULL; // 定义 分配空间

int main(int argc, char const *argv[])
{
    object *o = object::create_new_object();
    o->object_print();
    return 0;
}
