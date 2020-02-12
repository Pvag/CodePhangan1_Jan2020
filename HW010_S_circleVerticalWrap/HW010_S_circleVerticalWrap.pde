// SOLUTION to HW010_circleVerticalWrap
//
// create a function that draws a circle that moves horizontally from left to right:
// whenever the circle reaches the right edge, it should keep going forward, until it disappears;
// meanwhile, another circle should show up from the left edge, growing from the left,
// as much as the first one is fading out to the right, giving the impression of a
// vertical wrap (like if the canvas was wrapped around a vertical axis).
// Then call the function inside draw.

int x, y; // TODO talk about visibility (scoping) of variables - and also about dummy variables and actual values

void setup() {
  size(100, 200);
  x = 20;
  y = height/2;
}

void draw() {
  refreshBackground();
  horizontallyMovingCircleWrap(); // the function that creates the desired behaviour
}

void horizontallyMovingCircleWrap() {
  final int circleDiam = 30;
  final int circleRadius = circleDiam/2;
  
  updateCirclePosition(circleRadius);
  checkForSecondCircle(circleRadius);
  ellipse(x, y, circleDiam, circleDiam);
}

void updateCirclePosition(final int circleRadius) {
  final int speed = 2;
  x += speed;
  if ((x - circleRadius) > width) x = circleRadius; //<>//
}

void checkForSecondCircle(final int circleRadius) {
  final int rightEdgeOfRightCircle = x + circleRadius;
  if ((rightEdgeOfRightCircle) > width) {
    final int centerOfLeftCircle = -circleRadius + (rightEdgeOfRightCircle - width);
    ellipse(centerOfLeftCircle, y, 2*circleRadius, 2*circleRadius);
  }
}

void refreshBackground() {
  background(0, 255, 100);
}
