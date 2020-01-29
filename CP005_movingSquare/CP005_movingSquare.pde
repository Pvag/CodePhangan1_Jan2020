// declare the variables
int x;
int speed;

void setup() {
  size(400, 250);
  
  x = 0; // initialize the variable
  speed = 4;
}

void draw() {
  background(255, 0, 0);

  rect(x, 20, 40, 40);
  
  // assignment
  x = x + speed; // update the value of x
}
