// draws circles along a circle (or along a spiral)
//
// Parameters change according to mouse position
// (for both x and y coordinates).
//
// To research more on this style, lookup 'John Witney'
// on the internet.

void setup() {
  fullScreen();
  stroke(255);
  noFill();
}

void draw() {
  background(0);

  float diam = 10;
  int diamScale = 1;
  final int x0 = width/2;
  final int y0 = height/2;
  int spacing = int(map(mouseY, 0, height, 0, 20));
  int nCircles = int(map(mouseX, 0, width, 0, 200));
  
  // move the reference system to the middle of the canvas
  translate(x0, y0);
  
  final float rot = 0.3;
  
  for (int i = 0; i < nCircles; i++) {
    float red = map(i, 0, nCircles, 255, 0); // we'll discuss map soon!
    float green = map(sin(i), 0, 1, 255, 0);
    float blue = map(i, 0, nCircles, 0, 255);
    stroke(red, green, blue);
    ellipse(0, 0, diam, diam);
    //translate(0.3*i*spacing, 0); // spiral version
    translate(spacing, 0); // circle version
    rotate(rot);
    diam = diam + 0.1*i*diamScale;
  }
}
