#include "Dog.h"

void dog_bite(){
    printf("小狗 汪汪汪\n");
}

void dog_eat(){
    printf("小狗 吃骨头\n");
}

void dog_sleep(){
    printf("小狗 回狗窝睡觉\n");
}

Animal* new_Dog(){
    Dog *dog = malloc(sizeof(Dog));
    dog->parent.parent._vitable.onBite = dog_bite;
    dog->parent.parent._vitable.onEat = dog_eat;
    dog->parent.parent._vitable.onSleep = dog_sleep;

    return (Animal*)dog;
}