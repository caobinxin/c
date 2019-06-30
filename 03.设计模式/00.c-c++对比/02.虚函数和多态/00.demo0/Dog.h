#ifndef __DOG_H__
#define __DOG_H__
#include "Dogs.h"

typedef struct Dog Dog;
struct Dog{
    Dogs parent;
};

extern Animal* new_Dog();
#endif