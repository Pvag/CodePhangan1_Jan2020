// Does some stuff with the names of my favourite fruits:
// Chempedak, Durian, Mango, Mangosteen, Soursop, Chiku
//
// Prints all the names, prints one name randomly chosen among all names and more to be developed as HW.

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
  println("Printing the name of all favourite fruits:");
  println("===");
  for (int i = 0; i < favFruits.length; i++) {
    println(favFruits[i]);
  }
}

void printRandomFruit() {
  //
  println(" "); // leave an empty line
  int fruitID = int(random(favFruits.length));
  String selectedFruit = favFruits[fruitID];
  println("The fruit chosen is: " + selectedFruit); // join strings together with '+'
}

// HW create a function that prints to the console only the name of the fruits that are in season (mango and chiku)
