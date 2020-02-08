// PROCEDURAL version of the bouncing ball
// (see PV018 for the object-oriented version that generates the same output)
//
// HW
//
// change the color of the ball at each bounce (easy)
// change the background color every other bounce (intermediate)

int x, y, ballRadius, xSpeed, ySpeed;

void setup() {
  size(800, 200);
  
  x = 100;
  y = 100;
  
  xSpeed = 6;
  ySpeed = 4;
  
  ballRadius = 40;
}

void draw() {
  refresh();
  moveBall();
  renderBall();
}

void refresh() {
  final color bkgColor = color(0, 200, 80);
  background(bkgColor);
}

void moveBall() {
  if (x >= width - ballRadius || x <= ballRadius) xSpeed = -xSpeed;
  if (y >= height - ballRadius || y <= ballRadius) ySpeed = -ySpeed;
  x += xSpeed;
  y += ySpeed;
}

void renderBall() {
  final color ballColor = color(200, 100, 0);
  pushStyle();
  noStroke();
  fill(ballColor);
  circle(x, y, 2*ballRadius);
  popStyle();
}
