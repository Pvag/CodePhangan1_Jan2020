class Guru extends Person {
  // properties (data)
  String sanscritName;
  float beardLength;
  int numberOfFollowers;
  
  // constructor (initializer)
  Guru(String sName, float bLength, int age, String bName, int followers, int strength) {
    this.sanscritName = sName;
    this.beardLength = bLength;
    this.age = age;
    this.name = bName;
    this.numberOfFollowers = followers;
    this.strength = strength;
    
    healed = false;
  }
  
  // methods (actions)
  void heal(Tourist personToHeal) {
    personToHeal.heal();
  }
  
  void sexualHarassment(Person poorSoul) {
    if (poorSoul.strength < 6) {
      poorSoul.receivedNastyTreatment();
      healed = true;
      numberOfFollowers += 24;
    }
    else {
      healed = false;
      numberOfFollowers -= 30;
    }
  }
}
