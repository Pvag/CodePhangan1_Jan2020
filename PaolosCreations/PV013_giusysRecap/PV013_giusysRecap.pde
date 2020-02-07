void setup() {
  size(400, 200);
}

void draw() {
  refresh();
  ellipse(mouseX, mouseY, 20, 20);
}

void drawRectCenter() {
  int side = 40;
  refresh();
  rect(width-side/2, height-side/2, side, side);
}

void refresh() {
  background(200, 140, 50);
}
