// practice with PV016, multiple balls bouncing around the canvas
//
// first, understand how the version with a single bouncing ball (PV015) was implemented;
// try to re-write it on your own until you really get the logic and the implementation technique;
//
// now understand how the instructor has implemented PV016, the version with multiple bouncing balls;
// notice how the arrays were used to store info about position and velocity of all the balls;
// re-implement PV016 on your own;
// notice how easy it is to add 2 more bouncing balls to this sketch; do it!
//
// re-implement PV016 until it is really clear and you basically don't need to read
// the original code anymore, while writing your implementation

// TODO to be finished

int x, y; // position of the ball
int xSpeed, ySpeed; // velocity of the ball
int ballDiam;

void setup() {
  size(600, 300);
  x = 100;
  y = 60;
  xSpeed = 8;
  ySpeed = 6;
  ballDiam = 40;
}

void draw() {
  updateBallPosition();
  drawBall();
}

void updateBallPosition() {
  final int ballRadius = ballDiam/2;
  if (x >= width - ballRadius || x <= ballRadius) {
    xSpeed = -xSpeed;
  }
  if (y >= height - ballRadius || y <= ballRadius) {
    ySpeed = -ySpeed;
  }
}

void drawBall(){
  refresh();
  pushStyle();
  noStroke();
  fill(0, 200, 100);
  ellipse(x, y, ballDiam, ballDiam);
  popStyle();
}

void refresh(){
  background(0, 100, 200);
}
