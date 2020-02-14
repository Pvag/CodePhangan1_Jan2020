// this example shows object-oriented programming in an easy way
// for a car, with its engine
//
// the car HAS AN engine (the engine is a property of the car)
//
// ( in the example of the guru, the guru IS A person (inheritance - extends) )

Car quicky;
Car slowy;

void setup() {
  color quickyCarColor = color(0, 200, 80);
  quicky = new Car("BMW", quickyCarColor, 100); // don't forget to initialize the object
  slowy = new Car("FIAT", color(100, 80, 0), 40); // (you do that using the constructor)
  noLoop();
}

void draw() {
  // nested object and properties - access with dot-notation
  println("The power of Quicky is: " + quicky.motor.power);
  quicky.report();
  slowy.report();
}
