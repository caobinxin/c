#ifndef __WOLF_H__
#define __WOLG_H__

#include "Dogs.h"

typedef struct Wolf Wolf;

struct Wolf{
    Dogs parent;
};

extern Animal* new_wolf();

#endif
