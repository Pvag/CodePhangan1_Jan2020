void setup() {
  size(800, 400);
}

void draw() {
  //drawCircleInTheMiddleOfTheScreen();
  drawLogoInTheMiddleOfTheScreenWithDiam(200); // this is the actual call - this is the calling environment
  drawLogoInTheMiddleOfTheScreenWithDiam(50); // this is the actual call - this is the calling environment
}

// function implementation
//
// returned type (in this case is 'void')
// function name (in this case is 'drawCircleInTheMiddleOfTheScreen')
// ( type1 argument1, type2 argument2, and so on ) in this case the function has no input parameters
// {
//   stuff to do (in this case is: draw a circle in the middle of the screen)
// }
void drawCircleInTheMiddleOfTheScreen() {
  ellipse(width/2, height/2, 100, 100); // fixed diameter of 100
}

// this is the abstract definition (i.e. the function implementation)
void drawLogoInTheMiddleOfTheScreenWithDiam(int diam) {
  fill(255); // white
  ellipse(width/2, height/2, diam, diam); // variable diameter which is passed from the calling environment
  println(diam);
  fill(255, 200, 0); // yellow
  ellipse(width/2, height/2, diam/2, diam/2);
}
