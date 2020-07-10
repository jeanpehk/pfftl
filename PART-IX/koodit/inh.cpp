#include <iostream>

/*
 * Yksinkertainen esimerkki perinnästä ja dynaamisesta lähetyksestä.
 */

// Yliluokka A
class A {
public:
  virtual void print() {
    std::cout << "class A" << std::endl;
  }
};

// Aliluokka B
class B : public A {
public:
  virtual void print() {
    std::cout << "class B, derived from A" << std::endl;
  }
};

int main() {
  // c++ lähetys oletuksena staattista, joten joudutaan käyttämään viitteitä.
  A *pa;
  pa = new B();
  pa -> print(); // -> kutsuu B:n print()

  // staattisena toteutuksena, jolloin tyypit tiedossa käännösaikana:
  A a;
  B b;
  a.print();
  b.print();
}
