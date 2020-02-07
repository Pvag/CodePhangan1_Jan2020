// prints a list of restaurant name and number of table at that restaurant

int[] nTables; // array declaration
String[] restaurantNames;

nTables = new int[3]; // array initialization: Processing puts 0 for each element
restaurantNames = new String[3];

// now I put in the actual values to be stored in the array
// 10, 12, 3, 7
nTables[0] = 10;
restaurantNames[0] = "Green Gallery";

nTables[1] = 12;
restaurantNames[1] = "Chikalicious";

nTables[2] = 3;
restaurantNames[2] = "Ashoka"; 

// manually printing each value (boring)
//println("This restaurant has " + nTables[0] + " tables.");
//println("This restaurant has " + nTables[1] + " tables.");
//println("This restaurant has " + nTables[2] + " tables.");

// for loop: automatically loop trhough all names and number of tables
for (int id = 0; id < nTables.length; id++) {
  println(restaurantNames[id] + " has " + nTables[id] + " tables.");
}

// this will be executed only after looping through all the arrays (when the for loop finishes)
ellipse(10, 10, 10, 10);
