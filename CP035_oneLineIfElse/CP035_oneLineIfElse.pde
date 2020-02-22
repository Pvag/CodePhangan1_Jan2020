// the one-line if-else statement

void setup(){
  size(400, 100);
}

void draw(){
  color bkgColor = (mouseX > width/2) ? color(255) : color(0);
  background(bkgColor);
}
