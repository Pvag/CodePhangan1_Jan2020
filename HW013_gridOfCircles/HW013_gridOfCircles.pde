// # to be develop in a procedural way (which is the coding style we have been used until now) #

// a.
// create a function that draws a row of 10 circles using a for loop
//
// output will be like:
//  o o o o o o o o o o

// b.
// create a function that calls the previous function 6 times, in a for loop
//
// output will be like:
//  o o o o o o o o o o
//  o o o o o o o o o o
//  o o o o o o o o o o
//  o o o o o o o o o o
//  o o o o o o o o o o
//  o o o o o o o o o o

void setup() {
  size(600, 400);
}

void draw() {  
  gridOfCircles();
}

void gridOfCircles() {
  for (int row = 1; row <= 6; row++) {
    fill(0, 100, 40*row);
    rowOfCircles(row*40);
  }
}

void rowOfCircles(int y) {
  final int nOfCircles = 10;
  for (int i = 1; i <= nOfCircles; i++) {
    ellipse(i*40, y, 30, 30);
  }
}
