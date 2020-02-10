// draws a line of circles
//
// the number of circles to be drawn is taken from the x coordinate of the mouse pointer

void setup() {
  size(400, 200);
}

void draw(){
  //println("before the for loop");
  
  int nOfCircles = int(map(mouseX, 0, width-1, 0, 9));
  
  // we use for loops to repeat actions
  // for a specific number of times
  //
  // i is also called 'iterator'
  for (int i = 1; i <= nOfCircles; i++) { // i++ means 'i = i + 1' (short-hand version)
    // code to do here
    //println(i); // this is not changing the value of i, since it is NOT assigning
    fill(random(255), random(255), random(255));
    ellipse(i*40, mouseY, 30, 30);
  }
  
  //println("after the for loop");
}
