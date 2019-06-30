#include "Animal.h"


void animal_eat(Animal* animal){
    if(animal->_vitable.onEat){
        animal->_vitable.onEat();
    }
    return;
}

void animal_sleep(Animal* animal){
    if(animal->_vitable.onSleep){
        animal->_vitable.onSleep();
    }
    return;
}

void animal_bite(Animal* animal){
    if(animal->_vitable.onBite){
        animal->_vitable.onBite();
    }
    return;
}