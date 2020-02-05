int x;
int speed;

void setup() {
  size(400, 200);
  x = 6;
  speed = 6;
}

void draw() {
  refreshBackground();
  int side = 100;
  kitt(side);
}

void kitt(int side) {
  drawKitt(side);
  updateSpeed(side); 
  updateX();
}

void updateX() {
  x += speed; //equivalent to: 'x = x + speed;'
}

void drawKitt(int side) {
  rect(x, height/2 - side/2, side, side);
}

void updateSpeed(int side) {
  if (rightEdgeReached(side) || leftEdgeReached()) {
    speed = -speed;
  }
}

boolean rightEdgeReached(int side) {
  boolean reached = (x + side >= width);
  return reached;
}

boolean leftEdgeReached() {
  boolean reached = (x <= 0);
  return reached;
}

void refreshBackground() {
  background(0, 100, 200);
}
