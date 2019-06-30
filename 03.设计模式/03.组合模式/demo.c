#include <assert.h>
#include <stdlib.h>
#include <stdio.h>

typedef struct _Object{
    struct _Object** ppObject;
    int number;
    void (*operate)(struct _Object* pObject);
    char* name;
}Object;

void operate_of_parent(struct _Object* pObject){

    int index;
    assert(NULL != pObject);
    assert(NULL != pObject->ppObject && 0 != pObject->number);

    printf("parent: %s\n", pObject->name);
    for(index = 0; index < pObject->number; index++){
        pObject->ppObject[index]->operate(pObject->ppObject[index]);
    }
}

void operate_of_child(struct _Object* pObject){

    assert(NULL != pObject);
    printf("child: %s\n", pObject->name);
}

void process(struct _Object *pObject){

    assert(NULL != pObject);
    pObject->operate(pObject);
}



void init_parent(Object* parent, char* name){
    parent->name = name;
    parent->operate = operate_of_parent;
    parent->number = 0;
    parent->ppObject = NULL;
}

void init_child(Object* file, char* name){
    file->name = name;
    file->operate = operate_of_child;
}

void child_join_parent(Object* parent, Object* child){

    int index = 0;

    if(NULL == parent->ppObject){
        parent->ppObject = malloc(sizeof(Object*) * 12);/* 这里表示，一个父目录下，最多挂 12个子节点 */
    }

    if(12 < parent->number){
        printf("error! 父目录下最多挂 12 个子目录，当前操作失败\n");
        return;
    }
    
    index = parent->number;
    parent->ppObject[index] = child;

    index++;
    parent->number = index;
}

int main(int argc, char const *argv[])
{
    Object parent;
    Object parent_child_1;
    Object parent_child_2;
    
    Object parent_1;
    Object parent_1_child_1;
    Object parent_1_child_2;

    init_parent(&parent, "root-dir");
    init_child(&parent_child_1, "file1");
    init_child(&parent_child_2, "file2");

    child_join_parent(&parent, &parent_child_1); 
    child_join_parent(&parent, &parent_child_2);

    init_parent(&parent_1, "child-dir");
    init_child(&parent_1_child_1, "child_file_1");
    init_child(&parent_1_child_2, "child_file_2");

    child_join_parent(&parent_1, &parent_1_child_1);
    child_join_parent(&parent_1, &parent_1_child_2);

    child_join_parent(&parent, &parent_1);

    process(&parent);

    return 0;
}
