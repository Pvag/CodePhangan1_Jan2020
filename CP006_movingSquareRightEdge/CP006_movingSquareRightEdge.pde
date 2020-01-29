// declare the variables
int x;
int speed;
int squareSide;

void setup() {
  size(200, 250);
  
  x = 0; // initialize the variable
  speed = 20;
  squareSide = 40;
  
  frameRate(4);
}

void draw() {
  background(255, 0, 0);

  rect(x, 20, squareSide, squareSide);

  // change speed if right edge is reached
  if (x >= width - squareSide) {
    speed = - speed;
  }
  
  // assignment
  x = x + speed; // update the value of x
}
