#ifndef __DOGS_H__
#define __DOGS_H__

#include "Animal.h"

typedef struct Dogs Dogs;

struct Dogs{
    Animal parent;
    char* name;
};

#endif