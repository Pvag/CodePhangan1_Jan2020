// object-oriend way
Person aldo; // declare an object of class Person called aldo
Person lisa;

// procedural way
String nameOfAldo;
int ageOfAldo;

void setup() {
  size(400, 400);
  aldo = new Person("Aldo", 42); // aldo is created as an INSTANCE of class Person
  lisa = new Person("Lisa", 11);
  
  nameOfAldo = "Aldo";
  
  noLoop();
}

void draw() {
  aldo.introduceYourself(); // object-oriented way
  introduceYourself(nameOfAldo); // procedural way
  
  partyOrNot(aldo);
  partyOrNot(lisa);
}

// procedural way
void introduceYourself(String name) {
  println("Hello, my name is " + name + " (procedural way)");
}

void partyOrNot(Person p) {
  if (p.isOldEnoughToDrinkAlcohol()) {
    println("Hey, let's have a beer!");
  }
  else {
    println("Go back home and do your homework!");
  }
}
