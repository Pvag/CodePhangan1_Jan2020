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
  // if you have reached the right edge || the left edge,
  // please, change the sign of the speed !
  if (x >= width - squareSide || x <= 0) {
    speed = - speed;
  }
  //// change speed if left edge is reached
  //else if (x <= 0) {
  //  speed = - speed;
  //}
  
  // change speed if left edge is reached
  //if (x <= 0) {
  //  speed = - speed;
  //}
  
  // assignment
  x = x + speed; // update the value of x
}
