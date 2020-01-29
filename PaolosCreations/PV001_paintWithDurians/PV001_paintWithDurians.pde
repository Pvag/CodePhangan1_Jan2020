// Draw your Durian painting - a paint made with durians!
//
// Click or drag the mouse around to draw your artwork;
// press the spacebar to start anew;
// press the letter 's' to save your artwork to a file!

PImage durianImg;

void setup() {
  fullScreen(); // you can use this instead of size
  // the image that I load with loadImage must be saved in the
  // 'data' folder, inside this sketche's folder
  durianImg = loadImage("durianFruit.jpeg");
  cleanBkg();
}

void draw() {
}

// what to do when the user drags the mouse
// (drag means moving the mouse while clicking its button)
void mouseDragged() {
  image(durianImg, mouseX, mouseY);
}

// what to do when the user clicks the mouse button
void mouseClicked() {
  image(durianImg, mouseX, mouseY);
}

void cleanBkg() {
  background(255);
}

// what to do when the user presses the spacebar or the letter s;
// feel free to implement your features triggered by other keys!
void keyPressed() {
  if (key == ' ') cleanBkg();
  else if (key == 's') save("artwork.png");
}
