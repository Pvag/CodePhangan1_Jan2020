// just a quick example to take a closer look at functions

void setup() {
  noLoop();
}

void draw() {
  float weightOfPaolosCar = carWeight(4, 300.0);
  report("Paolo", weightOfPaolosCar);
  
  float weightOfBeatsCar = carWeight(6, 350.0);
  report("Beat", weightOfBeatsCar);

  float weightOfGiusysCar = carWeight(3, 57.0);
  report("Giusy", weightOfGiusysCar);
}

// calculates the total weight of the car
// depending on the number of wheels
// and its power
float carWeight(int nOfWheels, float power) {
  float totalWeight = float(nOfWheels)*power*3.5;
  
  return totalWeight;
}

// prints a nice report of the car and its owner
void report(String name, float carWeight) {
  println(name + "'s car weighs: " + carWeight + " kg.");
}
