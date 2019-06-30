#include <stdio.h>
#include <stdlib.h>

struct Person{
    void (*fun)(struct Person* p);
};

struct Man{
    struct Person person;
    void (*fun)(struct Man* pm);
};

void work(struct Man* pm)
{
    printf("工作\n");
}

struct Woman{
    struct Person person;
    void (*fun)(struct Woman *pw);
};

void shopping(struct Woman *pw)
{
    printf("在购物\n");
}

void eat(struct Person *person)
{
    printf("再吃饭\n");
}


int main(int argc, char const *argv[])
{
    struct Man man ;
    man.person.fun = eat;
    man.person.fun(&man.person);

    man.fun = work;
    man.fun(&man);


    struct Woman woman;
    woman.person.fun = eat;
    woman.person.fun(&woman.person);
    woman.fun = shopping;
    woman.fun(&woman);
    
    return 0;
}
