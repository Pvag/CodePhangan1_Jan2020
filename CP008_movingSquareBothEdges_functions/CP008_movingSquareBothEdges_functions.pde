// We will talk about functions (which I define and use in this code)
// in Week1Day3, so don't worry for now if you see some
// new things here and there: this is just a refactoring
// of CP007, meaning that this code (CP008) achieves
// the same graphical result, but with a different
// code structure. Enjoy!

// declare the variables
int x;
int speed;
int squareSide;

void setup() {
  size(200, 100);
  
  x = 20; // initialize the variable
  speed = 20;
  squareSide = 40;
  
  frameRate(4);
}

void draw() {
  background(255, 0, 0);

  rect(x, 20, squareSide, squareSide);

  // CONDITIONAL STATEMENT
  //
  // change speed if any vertical edge is reached
  // ( The symbol for the "or" is this: || )
  //
  // If you have reached the right edge || the left edge,
  // please, change the sign of the speed !
  //
  // this line is easier to read, than the correspondent line in CP007,
  // thanks to the definition of the 2 functions: 'righEdgeReached' and 'leftEdgeReached'
  if (rightEdgeReached() || leftEdgeReached()) {
    speed = - speed;
  }
  
  // assignment
  x = x + speed; // update the value of x with new position
}

// this is a function defined by me (as opposed to functions that already
// exist in Processing, like 'size', 'background', 'fill', 'noStroke'
// and so on):
// it returns true if the square has reached the right edge, false otherwise
boolean rightEdgeReached() {
  return x >= width - squareSide;
}

// this is another function defined by me. I can define as many functions as I want,
// to help me out achieving whatever I need my code to do: they make code re-usable
// and more readable.
// This function returns true if the square has reached the left edge, false otherwise
boolean leftEdgeReached() {
  return x <= 0;
}
