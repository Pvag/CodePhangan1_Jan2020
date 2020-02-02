// this code clearly justifies the need for a function:
// it is a big convenience!

void setup() {
  size(800, 600);
}

void draw() {
  background(240);
  drawSnowman(100, 100);
  // with just one more line of code, I can draw an entire new snowman! Instead of writing all that code!
  drawSnowman(350, 100);

  // homework
  //
  // 1. draw one more here!
  //
  // 2. create a new function called drawSnowmanWithScale
  // that accepts one more parameter, which scales headRadius by a value
  // (multiplying it) so that it renders a snowman that is scaled according
  // to the value passed in
  // e.g. drawSnowmanWithScale(100, 100, 2);
  //      will draw a snowman which is double in size than the one drawn by:
  //      drawSnowmanWithScale(100, 100, 1);
}

void drawSnowman(int topLeftX, int topLeftY) {
  // head
  final int headRadius = 50; // note: everything in this function refers to this value, so I can use it
                             //       to scale the entire snowman...see homework 2.
  final int headCenterX = topLeftX + headRadius;
  final int headCenterY = topLeftY + headRadius;
  ellipse(headCenterX, headCenterY, 2*headRadius, 2*headRadius);
  // body
  final int bodyRadius = 2*headRadius;
  final int bodyCenterX = headCenterX;
  final int bodyCenterY = headCenterY + headRadius + bodyRadius;
  ellipse(bodyCenterX, bodyCenterY, 2*bodyRadius, 2*bodyRadius);
  // eyes
  final int eyeDiam = headRadius/10;
  final int hDistanceEyesCenter = headRadius/5;
  final int vDistanceEyesCenter = headRadius/7;
  final int leftEyeCenterX = headCenterX - hDistanceEyesCenter;
  final int rightEyeCenterX = headCenterX + hDistanceEyesCenter;
  final int eyesCenterY = headCenterY - vDistanceEyesCenter;
  // left
  ellipse(leftEyeCenterX, eyesCenterY, eyeDiam, eyeDiam);
  // right
  ellipse(rightEyeCenterX, eyesCenterY, eyeDiam, eyeDiam);
  // nose (carrot)
  PImage carrotImage = loadImage("carrot.png");
  image(carrotImage, headCenterX, headCenterY);
}

void drawSnowmanWithScale(int x, int y, int scale) {
  // your code here...
}
