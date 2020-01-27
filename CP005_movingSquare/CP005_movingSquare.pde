int x; // declare the variable

void setup() {
  size(400, 250);
  background(255, 0, 0);
  
  x = 0; // initialize the variable
}

void draw() {
  rect(x, 20, 40, 40);
  
  x = x + 1; // update the value of x
}
