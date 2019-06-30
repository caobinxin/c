#ifndef __ANIMAL_H__
#define __ANIMAL_H__

typedef struct vitable vitable;

struct vitable{
    void (*onEat)();
    void (*onBite)();
    void (*onSleep)();
};

typedef struct Animal Animal;

struct Animal{
    vitable _vitable;
};

extern void animal_eat(Animal* animal);
extern void animal_sleep(Animal* animal);
extern void animal_bite(Animal* animal);

#endif