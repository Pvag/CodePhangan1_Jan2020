// draws the flag of Indonesia using our function
//
// flags are positioned at the same coordinates of flags
// in CP011, but the code is much less, as you can see!

void setup() {
  size(800, 400);
  noLoop(); // only call draw once
  background(100); // grey background
  noStroke(); // don't draw broders of shapes
}

void draw() {
  // flag #1
  //
  // this is the function call
  indonesiaFlag(100, 80); // with just 1 line, 6 lines are executed!
  indonesiaFlag(220, 40);
  indonesiaFlag(10, 200);
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
