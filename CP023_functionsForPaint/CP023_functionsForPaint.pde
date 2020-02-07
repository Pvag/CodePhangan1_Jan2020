int brushSize;

void setup() {
  size(600, 340);
  brushSize = 20;
  refresh();
}

void draw() {
}

void mouseReleased() {
  verticalSymmetry();
}

void verticalSymmetry() {
  circle(mouseX, mouseY, brushSize);
  circle(width - mouseX, mouseY, brushSize);
}

void keyPressed() {
  if (key == '+') {
    brushSize = brushSize + 20; // ** // the '=' operator is the ASSIGNMENT operator
    //brushSize += 20; // short-hand version of **
  } else if (key == '-') {
    brushSize -= 20;
  } else if (key == ' ') {
    refresh();
  }
}

void refresh() {
  background(50, 100, 255);
}
