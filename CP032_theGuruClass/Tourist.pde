class Tourist extends Person {
  // constructor for the class Tourist
  Tourist(String n, int strength) {
    this.name = n;
    healed = false;
    harassed = false;
    this.strength = strength;
  }
  
  void heal() {
    healed = true;
    println("Hello, this is: " + name + ". Oh wow, that was an amazing healing!");
  }
  
  void receivedNastyTreatment() {
    reportToFb();
  }
  
  void reportToFb() {
    println("Hello community, I am poor soul " + name + ". I was abused by a guru.");
  }
  
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
}
