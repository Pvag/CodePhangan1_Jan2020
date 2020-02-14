// codephangan@gmail.com

// This is a very nasty story about gurus and people
//
// It is just a funny object-oriented program that plays
// around with humor.

Guru paolo;
Guru omar;
Tourist miriam;
Tourist sheila;

void setup() {
  paolo = new Guru("Paucus", 7.5, 35, "Paolo", 325, 4);
  omar  = new Guru("Kolman", 13.2, 49, "Omar", 1243, 8);
  miriam = new Tourist("Miriam", 5);
  sheila = new Tourist("Sheila", 9);
  
  noLoop();
}

void draw() {
  paolo.heal(miriam);
  
  omar.sexualHarassment(sheila);
  sheila.tellMeYourStory();

  omar.sexualHarassment(miriam);
  miriam.tellMeYourStory();
  
  omar.tellMeYourStory();
  omar.sexualHarassment(paolo);
  paolo.tellMeYourStory();
}
