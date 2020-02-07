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
  drawBall();
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

void drawBall() {
  final color ballColor = color(200, 100, 0);
  pushStyle();
  noStroke();
  fill(ballColor);
  circle(x, y, 2*ballRadius);
  popStyle();
}
