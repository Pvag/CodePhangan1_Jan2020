class Person {
  int age;
  String name;
  
  Person(String n, int a) {
    name = n;
    age = a;
  }
  
  void introduceYourself() {
    println("Hello, my name is " + name);
  }
  
  boolean isOldEnoughToDrinkAlcohol() {
    return age >= 18;
  }
}
