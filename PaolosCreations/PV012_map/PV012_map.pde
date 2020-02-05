// use mouse position (x coordinate) to choose bkg color - uses 'map'

void setup() {
  size(800, 200);
}

void draw() {
  // map returns a float: to transform it into an int, use
  // the int() function
  //
  // 'map' gradually turns the first interval, specified by
  // arguments 2 and 3, into the second interval, specified by
  // arguments 4 and 5
  //
  // mouseX varies between 0 and width, but a color can only go from
  // 0 to 255: that's why I use map! I am rescaling mouseX so that
  // then mouse is at the left edge, grey is 0; when mouse is at the
  // right edge, grey is 255 (instead of width)! It is a RESCALING
  int grey = int(map(mouseX, 0, width, 0, 255));
  background(grey);
}
