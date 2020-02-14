class Person {
  String name;
  int age;
  boolean healed;
  boolean harassed;
  int strength;

  void tellMeYourStory() {
    println("----");
    println("Hello lovely souls (put a smiley here), I am " + name + ".");
    if (harassed) {
      println("Did you know that I was harassed, in the past?"); 
    }
    if (healed) {
      println("Now that I am healed I feel so good!");
    }
    else {
      println("Please, tell me the name of a good guru!"); 
    }
  }
  
  void receivedNastyTreatment() {
    harassed = true;
  }
}
