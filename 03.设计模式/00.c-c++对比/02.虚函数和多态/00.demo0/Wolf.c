#include "Wolf.h"

void wolf_bite(){
    printf("狼 在吼叫\n");
}

void wolf_eat(){
    printf("狼 在吃人\n");
}

void wolf_sleep(){
    printf("狼 在打呼噜\n");
}


Animal* new_wolf(){
    Wolf *wolf = malloc(sizeof(Wolf));

    wolf->parent.parent._vitable.onBite = wolf_bite;
    wolf->parent.parent._vitable.onEat = wolf_eat;
    wolf->parent.parent._vitable.onSleep = wolf_sleep;

    return (Animal*) wolf;
}