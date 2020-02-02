// draws the magical symbol that is "everywhere" in the Koh Phangan "Conscious Community"
//
// move the mouse left and right to see a different shape appear
// move it up and down to change the diameter of the circles

int artworkNumber;

void setup() {
  size(600, 600);
  background(0);
  artworkNumber = 0;
}

void draw() {
  generateTrail();
  
  int symbolRadius = mouseX;
  int nSteps = 6; // experiment with this, increase it, for more complicated shapes!
  float rotStep = 2*PI/nSteps;
  int circleFill = 80; // experiment with this
  int circleOpacity = 10; // and with this
  fill(circleFill, circleOpacity);
  translate(width/2, height/2);
  int circlesRadius = int(map(mouseY, 0, height, 1, 400));
  //rotate(rotStep/2); // set the drawing vertical
  for (int i = 0; i < nSteps; i++) {
    rotate(rotStep);
    translate(symbolRadius, 0);
    ellipse(0, 0, circlesRadius, circlesRadius);
    translate(-symbolRadius, 0);
  } //<>//
}

void generateTrail() {
  int fillSpeed = 10; // change this between 0 (full trail) and 50 (almost no trail)
  fill(0, fillSpeed);
  rect(0, 0, width, height);
}

void keyPressed() {
  switch (key) {
    case ' ': {
      background(0);
      break;
    }
    case 's': {
      artworkNumber++; // increase the value stored in the variable artworkNumber by 1
      String fileName = "artwork" + artworkNumber + ".png"; // change file name at each save to avoid overwriting
      save(fileName);
      break;
    }
    default: {
      println("No actions associated with key: " + key);
    }
  }
}
