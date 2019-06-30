

typedef struct
{
    void** __vfptr;
    int base1_1;
}CBase1;

typedef struct 
{
    void(* base1_fun1)(CBase1* that);
}CBase1_VFTable;

void  base1_fun1(CBase1* that)
{
    printf("base1_fun1()\n");
}

//////////////////////////////
typedef struct 
{
    int base2_1;
} CBase2;


/////////////////////////////
typedef struct 
{
    void** __vfptr;
    int base3_1;
} CBase3 ;

typedef struct 
{
    void(* base3_fun1)(CBase3* that);
}CBase3_VFTable;

void  base3_fun1(CBase3* that)
{
    printf("base3_fun1()" );
}

//////////////////////////////////
//这个相当于是继承了前面那 三个类
typedef struct 
{
    CBase1 base1; // 有虚函数表
    CBase3 base3; // 有虚函数表
    CBase2 base2; // 没有虚函数表

    int derive1_1;
}CDerive1;

typedef struct 
{
    void (*base1_fun1)(CBase1* that);
    void(*derive1_fun1)(CDerive1* that);
}CBase1_CDerive1_VFTable;

typedef struct 
{
    void(* base3_fun1)(CDerive1* that);
}CBase3_CDerive1_VFTable;


void  base3_derive1_fun1(CDerive1* that)
{
    printf("base3_derive1_fun1()");
}

void  derive1_fun1(CDerive1* that)
{
    printf("derive1_fun1()");
}


// CBase1 的虚函数表
CBase1_VFTable __vftable_base1 = {base1_fun1};

// CBase3 的虚函数表
CBase3_VFTable __vftable_base3 = {base3_fun1};


// CDerive1 和 CBase1 共用的虚函数表
CBase1_CDerive1_VFTable __vftable_base1_derive1 = {base1_fun1,derive1_fun1};


//再构造CDerive1覆盖CBase3后的虚函数表: 注意: 数覆盖会替换原来的函数指针
CBase3_CDerive1_VFTable __vftable_base3_derive1 = {base3_derive1_fun1};


void test(CBase1* pcb1, CBase2 *pcb2, CBase3 *pcb3, CDerive1 *pcd1);

int main(int argc, char const *argv[])
{
    CDerive1 d1;
    d1.derive1_1 = 1;

    d1.base1.base1_1 = 11;
    d1.base1.__vfptr = (void **)&(__vftable_base1_derive1);


    d1.base2.base2_1 = 21;
    d1.base3.base3_1 = 31;
    d1.base3.__vfptr = (void **)&(__vftable_base3_derive1);


    /**
     * 由于目前的CDerive1是我们手动构造的，不存在真正语法上的继承关系，
     * 如要得到各基类指针，我们就不能直接来取，必须手动根据偏移计算:
     */

    char* p = (char *)(&d1);
    CBase1* pb1 = (CBase1*)(p + 0);
    CBase2* pb2 = (CBase2*)(p + sizeof(CBase1) + sizeof(CBase3)); /* 这里的顺序要看 CDerive1 */
    CBase3* pb3 = (CBase3*)(p + sizeof(CBase1));


    CDerive1* pd1 = (CDerive1*)(p);

    test(pb1, pb2, pb3, pd1);

    return 0;
}

void test(CBase1* pcb1, CBase2 *pcb2, CBase3 *pcb3, CDerive1 *pcd1)
{
    printf("CBase1...........................\n");

    CBase1_CDerive1_VFTable *cd1_vtable = ((CBase1_CDerive1_VFTable *)(pcb1->__vfptr));
    cd1_vtable->base1_fun1(pcb1);

    //其他 类似
}
