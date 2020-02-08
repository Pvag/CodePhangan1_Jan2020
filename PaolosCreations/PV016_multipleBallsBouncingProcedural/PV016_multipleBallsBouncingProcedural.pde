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
// You will see how this code will be way easier to understand and write,
// in an Object Oriented fashion (see PV019)

// PROCEDURAL version of the multiple bouncing balls
// (see PV019 for the object-oriented version that generates the same output)


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
  renderBalls();
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

// move all the balls
void moveBalls() {
  for (int i = 0; i < xs.length; i++) {
    moveBall(i);
  }
}

// render all the balls
void renderBalls() {
  for (int i = 0; i < xs.length; i++) {
    renderBall(i);
  }
}

void refresh() {
  final color bkgColor = color(0, 200, 80);
  background(bkgColor);
}

// move a specific ball (the one that has index i)
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

// render a specific ball (the one that has index i)
void renderBall(int i) {
  int x = xs[i];
  int y = ys[i];
  final color ballColor = color(200, 100, 0);
  pushStyle();
  noStroke();
  fill(ballColor);
  circle(x, y, 2*ballRadius);
  popStyle();
}
