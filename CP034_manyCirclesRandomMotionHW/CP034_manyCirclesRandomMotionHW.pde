// HW
//
// 1. change moveCirclesCloseBy() so that circles will stay in canvas
//
// 2. change the code, so that when 2 circles touch, they create a new circle, adding it to the canvas
//
// 3. change the code, so that when 2 circles touch, they both change color to a new random color
//
// 4. change it so that after 3 collisions, a circle will vanish
//
// 5. make a nice effect for the vanishing circle, like an explosion

int[] x;
int[] y;
int diam;
final int nCircles = 10;

void setup() {
  size(400, 400);

  x = new int[nCircles];
  y = new int[nCircles];
  diam = 20;

  initPositions();
}

void draw() {
  //moveCirclesRandomly();
  moveCirclesCloseBy();
  drawCircles();
}

void initPositions() {
  for (int i = 0; i < nCircles; i++) {
    x[i] = int( random(width - diam/2) + diam/2 );
    y[i] = int( random(height - diam/2) + diam/2 );
  }
}

void drawCircles() {
  for (int i = 0; i < nCircles; i++) {
    circle(x[i], y[i], diam);
  }
}

void moveCirclesRandomly() {
  initPositions();
}

void moveCirclesCloseBy() {
  for (int i = 0; i < nCircles; i++) {
    x[i] += int(random(3)) - 1;
    y[i] += int(random(3)) - 1;
  }
}
