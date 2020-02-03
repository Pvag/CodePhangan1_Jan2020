// some more examples of functions

void setup() {
  size(600, 600);
}

void draw() {
  drawChurch();
  drawSnowman();
}

void drawChurch() {
  rect(width/2, height/2, 100, 100);
  triangle(width/2, height/2, width/2 + 100, height/2, width/2 + 50, 50);
}

void drawSnowman() {
  ellipse(100, 100, 40, 40); // head
  ellipse(100, 220, 200, 200);
}
