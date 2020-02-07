color[] favColors;

void setup() {
  size(600, 340);
  
  color favBlue = color(0, 100, 200);
  color favGreen = color(0, 200, 100);
  color favOrange = color(200, 100, 0);
  
  favColors = new color[3];
  favColors[0] = favBlue;
  favColors[1] = favGreen;
  favColors[2] = favOrange;
  
  frameRate(1);
}

void draw() {
  int colorID = int(random(favColors.length));
  background(favColors[colorID]);
}
