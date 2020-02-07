// randomly pick a color among my favourite ones
// and use it as background color

color[] favColors; // declare an array of variables of type color

void setup() {
  size(600, 340);
  
  // i store my favourite colors in color variables
  color favBlue = color(0, 100, 200);
  color favGreen = color(0, 200, 100);
  color favOrange = color(200, 100, 0);
  
  favColors = new color[3]; // initialize the favourite colors array (reserves actual space in memory)
  // set values in the array
  favColors[0] = favBlue;
  favColors[1] = favGreen;
  favColors[2] = favOrange;
  
  frameRate(1);
}

void draw() {
  // get a proper random number, between 0 and 2, included
  int colorID = int(random(favColors.length));
  // pick a color from the favourite ones
  background(favColors[colorID]);
}
