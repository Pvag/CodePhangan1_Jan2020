// OBJECT-ORIENTED version of the multiple bouncing balls
// (see PV016 for the procedural version that generates the same output)
//
// HW
// --
// see how easy it is to set the ball color for a specific ball,
// independently from the other balls. Set a different color for each ball.
// You may do it in the initializer (you will have to change its definition
// accordingly in the Ball file) or using a setter that you have to
// develop.

Ball[] myBalls;

void setup() {
  size(800, 200);
  final int nBalls = 3;
  myBalls = new Ball[nBalls];
  
  initBalls();
}

void draw() {
  refresh();
  animateBalls();
}

void animateBalls() {
  for (int i = 0; i < myBalls.length; i++) {
    Ball theBall = myBalls[i];
    theBall.move();
    theBall.render();
  }
}

void initBalls() {
  // of course this code will be replaced by a for loop and calls to random,
  // in case many many balls!
  
  // constructor's parameters:
  // x0, y0, xSpeed, ySpeed, ballRadius
  Ball ball1 = new Ball(100, 100, 6, 4, 40);
  Ball ball2 = new Ball(100, 100, 10, 2, 40);
  Ball ball3 = new Ball(100, 100, 3, 5, 40);
  myBalls[0] = ball1;
  myBalls[1] = ball2;
  myBalls[2] = ball3;
}

void refresh() {
  final color bkgColor = color(0, 200, 80);
  background(bkgColor);
}
