// modify HW015 so that it draws only every other flag
//
// like this (f means flag, x means missing flag):
//
// f x f x f x f
// f x f x f x f
// f x f x f x f

void setup() {
  size(800, 400);
  noLoop(); // only call draw once
  background(100); // grey background
  noStroke(); // don't draw broders of shapes
}

void draw() {
  gridOfFlags();
}

void gridOfFlags() {
  for (int i = 0; i < 4; i++) {
    rowOfFlags(i*50 + 10);
  }
}

// draws a row of 5 flags
void rowOfFlags(final int y) {
  // code here...
  for (int i = 0; i < 5; i+=2) {
    indonesiaFlag(110*i + 10, y);
  }
}

// this function draws the flag of Indonesia
//
// this is the function definition
void indonesiaFlag(int topLeftX, int topLeftY) {
  int flagWidth = 100;
  int flagHeight = 40;
  // red part of the flag
  fill(255, 0, 0);
  rect(topLeftX, topLeftY, flagWidth, flagHeight/2);
  // white part of the flag
  fill(255);
  rect(topLeftX, topLeftY + flagHeight/2, flagWidth, flagHeight/2);
}
