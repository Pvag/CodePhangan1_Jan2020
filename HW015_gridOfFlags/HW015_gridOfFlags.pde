// go back to CP012: copy/paste that code here and mdify it so that is draws
// a grid of flags (start from one row and then draw many rows).

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
