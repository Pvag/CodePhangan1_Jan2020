// this code paints the background in 4 different colors,
// depending upon which quadrant the mouse is

void setup() {
  size(800, 280);
}

void draw() {
  // top left quadrant is black
  if (mouseX < width/2 && mouseY < height/2) {
    background(0);
  }
  // top right quadrant is red
  else if (mouseX > width/2 && mouseY < height/2) {
    background(255, 0, 0);
  }
  // bottom left quadrant is green
  else if (mouseX < width/2 && mouseY > height/2) {
    background(0, 255, 0);
  }
  // bottom right quadrant is blue
  else {
    background(0, 0, 255);
  }
}
