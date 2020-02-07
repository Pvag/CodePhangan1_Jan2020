// triangle rotates in the middle of the screen
//
// HW
// --
// 1. draw one more triangle, somewhere else, rotating of the same angle
// 2. draw two triangles, with vertical symmetry, rotating in opposite ways

float rot;

void setup() {
  size(650, 300);
  rot = 0.;
}

void draw() {
  drawTrail();
  // translate moves the origin of the axis
  translate(width/2, height/2);
  //translate(mouseX, mouseY); // different effetct (comment prev. line)
  // rotate rotates the axis
  rotate(rot);
  drawTriangle();
  rot += 0.1;
}

void drawTrail() {
  fill(0, 100, 200, 8);
  rect(0, 0, width, height);
}

void drawTriangle() {
  noStroke();
  fill(0, 200, 100);
  // after translating, drawing at 0, 0 means drawing where the new reference system is centers
  triangle(-20, 20, 20, 20, 0, -20);
}
