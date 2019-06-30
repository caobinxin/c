#include <string>
#include <iostream>
#include <assert.h>

using namespace std;


class data{
    public:
        data(){}
        virtual ~data(){}
        virtual class data* copy() = 0;
};

class data_A: public data{
    public:
        string name;
        data_A(){}
        ~data_A(){}

        class data* copy(){
            data_A *data_a = new data_A;
            data_a->name = this->name + "_copy_object";
            return data_a;
        }
};

class data_B: public data{
    public:
        int id;
        data_B(){}
        ~data_B(){}

        class data* copy(){
            data_B *data_b = new data_B;
            data_b->id = this->id * 10;
            return data_b;
        }
};

class data* copy(class data * data){
    class data *d = data->copy();
    return d;
}

int main(int argc, char const *argv[])
{
    
    data_A dataA;
    dataA.name = "dataA";

    data_A *ca = (data_A*)copy(&dataA);
    cout << "ca->name : " << ca->name << endl; 

    data_B dataB;
    dataB.id = 7;

    data_B *cb = (data_B*)copy(&dataB);
    cout << "cb->id : " << cb->id << endl;
    

    return 0;
}
