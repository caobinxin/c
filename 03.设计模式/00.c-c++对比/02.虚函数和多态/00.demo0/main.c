#include "Animal.h"
#include "Dog.h"
#include "Wolf.h"

int main(int argc, char const *argv[])
{
    Animal *animal = new_Dog();

    animal_eat(animal);
    animal_sleep(animal);
    animal_bite(animal);

    animal = new_wolf();

    animal_eat(animal);
    animal_sleep(animal);
    animal_bite(animal);
    
    return 0;
}
