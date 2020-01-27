// this sketch draws a circle that follows the mouse
// while randomly changing the background color

void setup() {
  size(400, 300);
  frameRate(3);
}

void draw() {
  background(random(255), 0, random(255));
  circle(mouseX, mouseY, 40);
}
