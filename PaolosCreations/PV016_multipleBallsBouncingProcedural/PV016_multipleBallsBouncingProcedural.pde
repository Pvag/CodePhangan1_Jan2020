// multiple balls bouncing in the canvas
//
// HW
// --
//
// 1. add one more ball
// 2. for each ball, set a different fill color (use an array the holds the color for each ball)
//
// NOTE
// ----
//
// You will see how this code will be way easier to understand and write, in an Object Oriented fashion

int[] xs, ys;
int ballRadius;
int[] xSpeeds, ySpeeds;

void setup() {
  size(800, 200);
  
  final int nBalls = 3;
  
  xs = new int[nBalls];
  ys = new int[nBalls];
  xSpeeds = new int[nBalls];
  ySpeeds = new int[nBalls];
  
  ballRadius = 40;

  initStartingPositions();
  initSpeeds();  
}

void draw() {
  refresh();
  moveBalls();
  drawBalls();
}

// use this to set the initial position of the ball at (probably) different random values
void initStartingPositions() {
  for (int i = 0; i < xs.length; i++) {
    xs[i] = int(random(width - 2*ballRadius)) + ballRadius;
    ys[i] = int(random(height - 2*ballRadius)) + ballRadius;
  }
}

// use this to set the initial position of the all the ball in the same point
void initStartingPositionsFromTheSamePoint(int x0, int y0) {
  for (int i = 0; i < xs.length; i++) {
    xs[i] = x0;
    ys[i] = y0;
  }
}

void initSpeeds() {
  final int maxSpeed = 7;
  for (int i = 0; i < xs.length; i++) {
    xSpeeds[i] = int(random(maxSpeed)) + 4;
    ySpeeds[i] = int(random(maxSpeed)) + 4;
  }
}

void moveBalls() {
  for (int i = 0; i < xs.length; i++) {
    moveBall(i);
  }
}

void drawBalls() {
  for (int i = 0; i < xs.length; i++) {
    drawBall(i);
  }
}

void refresh() {
  final color bkgColor = color(0, 200, 80);
  background(bkgColor);
}

void moveBall(int i) {
  int x = xs[i];
  int y = ys[i];
  int xSpeed = xSpeeds[i];
  int ySpeed = ySpeeds[i];
  if (x >= width - ballRadius || x <= ballRadius) xSpeed = -xSpeed;
  if (y >= height - ballRadius || y <= ballRadius) ySpeed = -ySpeed;
  xSpeeds[i] = xSpeed;
  ySpeeds[i] = ySpeed;
  xs[i] += xSpeeds[i];
  ys[i] += ySpeeds[i]; //<>//
}

void drawBall(int i) {
  int x = xs[i];
  int y = ys[i];
  final color ballColor = color(200, 100, 0);
  pushStyle();
  noStroke();
  fill(ballColor);
  circle(x, y, 2*ballRadius);
  popStyle();
}
