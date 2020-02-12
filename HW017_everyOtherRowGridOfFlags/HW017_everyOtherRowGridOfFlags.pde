// modify HW015 so that id only draws every other row
//
// like this (f means flag, x means missing flag):
//
// f f f f f f
// x x x x x x
// f f f f f f
// x x x x x x
// f f f f f f
// x x x x x x

void setup() {
  size(800, 400);
  noLoop(); // only call draw once
  background(100); // grey background
  noStroke(); // don't draw broders of shapes
}

void draw() {
  gridOfFlags();
}

boolean isEven(int n) {
  return (n/2*2 == n);
}

void gridOfFlags() {
  for (int i = 0; i < 6; i++) {
    if (isEven(i)) {
      rowOfFlags(i*50 + 10);
    }
  }
}

// draws a row of 5 flags
void rowOfFlags(final int y) {
  // code here...
  for (int i = 0; i < 5; i++) {
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
