// This sketch paints the canvas with a different color,
// according to the x value of the mouse pointer:
// left part will give red; middle part will give green;
// right part will give blue.

void setup() {
  size(800, 280);
}

void draw() {
  // if mouse is in the left part, paint in red
  if (mouseX < width/3) {
    background(255, 0, 0);
  }
  // else if mouse is in the center part, paint in green
  // ( && means "and" )
  else if ( ( mouseX >= width/3 ) && ( mouseX < width*2/3 ) ) {
    background(0, 255, 0);
  }
  // else paint in blue
  else {
    background(0, 0, 255);
  }
}
