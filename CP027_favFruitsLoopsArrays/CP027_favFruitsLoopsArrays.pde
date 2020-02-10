// Chempedak, Durian, Mango, Mangosteen, Soursop, Chiku

// array of strings
String[] favFruits; // array declaration

void setup() {
  favFruits = new String[6]; // array initialization
  
  favFruits[0] = "Chempedak";
  favFruits[1] = "Durian";
  favFruits[2] = "Mango";
  favFruits[3] = "Mangosteen";
  favFruits[4] = "Soursop";
  favFruits[5] = "Chiku";
  
  //favFruits = {"Chempedak", "Durian", "Mango", "Mangosteen", "Soursop", "Chiku"};
  
  noLoop();
}

void draw() {
  printAllFavFruits(); // function call
  printRandomFruit();
}

// function implementation (it doesn't do anything on its own, you have to call it!)
void printAllFavFruits() {
  for (int i = 0; i < favFruits.length; i++) {
    println(favFruits[i]);
  }
}

void printRandomFruit() {
  //
  int fruitID = int(random(favFruits.length));
  String selectedFruit = favFruits[fruitID];
  println("The fruit chosen is: " + selectedFruit);
}

// HW create a function that prints only fruits that are in season
