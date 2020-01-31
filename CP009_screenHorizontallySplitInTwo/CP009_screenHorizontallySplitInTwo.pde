void setup() {
  size(800, 280);
}

void draw() {
  if (mouseY < height/2) {
    background(0);
  }
  else {
    background(255);
  }
}
