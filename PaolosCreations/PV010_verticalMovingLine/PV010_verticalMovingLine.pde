// draws a vertical line that moves in the canvas from left to right;
// when the right edge is reached, the line starts back from the left
// edge, as if it was wrapping around (flat Earth effect)

int x;

void setup() {
  size(200, 100);
  x = 0;
}

void draw() {
  refreshBackground(); // HW : draw a fading trail
  drawVerticalMovingLine();
}

// clears the background at each frame
void refreshBackground() {
  background(0);
}

// draws a white line that moves from left to right and then back from left
void drawVerticalMovingLine() {
  stroke(255); // white stroke
  line(x, 0, x, height); // vertical line, from top to bottom of the canvas
  // note: x++ is short-hand for x = x + 1;
  if (x++ > width) x = 0; // if you have reached the right edge, start again from left
}
