// scope of a variable

color greenColor; // variable declaration - greenColor is now a GLOBAL variable

void setup() {
  size(600, 400);
  greenColor = color(0, 255, 0); // variable initialization
  background(greenColor);
  //frameRate(1);
}

void draw() {
  //background(255);
  int trailSpeed = 3;
  fill(greenColor, trailSpeed);
  rect(0, 0, width, height);

  fill(0);
  ellipse(mouseX, mouseY, 40, 40);

  color blueColor;
  blueColor = color(0, 0, 255);
  
  // blue big
  middleCircle(blueColor, 200, false); // fillColor, diameter, stroke or not
  
  color greenishColor = color(0, 220, 120);
  // green medium
  middleCircle(greenishColor, 100, true);

  // blue small
  middleCircle(blueColor, 50, true);
}

// BEST WAY
//
void middleCircle(color myColor, int diameter, boolean drawStroke) {
  // any time I want to change settings of my drawing, like fill color,
  // stroke color, weight of line, etc., I am affecting all the drawing
  // that will happen afterwards.
  // If I only want to set those values for a specific part of the code
  // and not for the rest of the code, I have to call pushStyle(), then
  // specify the details for the environment (color, stroke, etc.) and,
  // at the end, add popStyle();
  pushStyle();
    fill(myColor);
    if (drawStroke) {
      strokeWeight(5);
      stroke(255, 0, 0);
    }
    else {
      noStroke();
    }
    ellipse(width/2, height/2, diameter, diameter);
  popStyle();
}

// WORST WAY (still working): make the color variable global
//void middleCircle() {
//  fill(blueColor);
//  ellipse(width/2, height/2, 50, 50);
//}
