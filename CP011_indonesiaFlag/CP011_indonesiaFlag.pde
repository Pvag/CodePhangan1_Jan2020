// draws the flag of Indonesia

void setup() {
  size(800, 400);
  noLoop();
  background(100);
  noStroke();
}

void draw() {
  // flag #1
  //
  // red part of the flag
  fill(255, 0, 0);
  rect(100, 80, 100, 20);
  // white part of the flag
  fill(255);
  rect(100, 100, 100, 20);

  // flag #2
  //
  // red part of the flag
  fill(255, 0, 0);
  rect(220, 40, 100, 20);
  // white part of the flag
  fill(255);
  rect(220, 60, 100, 20);

  // flag 3
  // red part of the flag
  fill(255, 0, 0);
  rect(10, 200, 100, 20);
  // white part of the flag
  fill(255);
  rect(10, 220, 100, 20);
}
