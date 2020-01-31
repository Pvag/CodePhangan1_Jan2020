// this sketch color the background in black if the mouse
// is on the left side of the canvas; in white otherwise

void setup() {
  size(800, 280);
}

void draw() {
  if (mouseX < width/2) {
    background(0); // if mouse is on the left of the canvas
  }
  else {
    background(255); // if mouse is on the right of the canvas
  }
}
