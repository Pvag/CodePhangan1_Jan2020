class Car {
  String manufacturer;
  color carColor;
  int kmCounter;
  Engine motor;
  
  Car(String manufacturer, color carColor, int power) {
    this.manufacturer = manufacturer;
    this.carColor = carColor;
    
    kmCounter = 0;
    motor = new Engine(power); // REMEMBER THIS! The car initializes the Engine object!
  }
  
  void ride() {
    kmCounter += 10;
  }
  
  void report() {
    println("---");
    println("This is a " + manufacturer + " car. I have run " + kmCounter + " already.");
    println("My engine is " + motor.power + " strong.");
  }
}
