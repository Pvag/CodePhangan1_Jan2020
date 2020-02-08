// OBJECT-ORIENTED version of the bouncing ball
// (see PV015 for the procedural version that generates the same output)
//
// HW
//
// change the color of the ball at each bounce (easy)
// change the background color every other bounce (intermediate)

Ball myBall;

void setup() {
  size(800, 200);
  // constructor's parameters:
  // x0, y0, xSpeed, ySpeed, ballRadius
  myBall = new Ball(100, 100, 6, 4, 40);
}

void draw() {
  refresh();
  myBall.move();
  myBall.render();
}

void refresh() {
  final color bkgColor = color(0, 200, 80);
  background(bkgColor);
}
