// HW
//
// 1. change moveCirclesCloseBy() so that circles will stay in canvas
//

int[] x;
int[] y;

int diam;

final int nCircles = 10;

void setup() {
  size(200, 200);

  x = new int[nCircles];
  y = new int[nCircles];

  diam = 20;

  initPositions();
}

void draw() {
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

void moveCirclesCloseBy() {
  final int rad = diam/2;

  for (int i = 0; i < nCircles; i++) {
    int xSpeed = int(random(3)) - 1;
    int ySpeed = int(random(3)) - 1;

    updateCoordinate(x, i, width, rad, xSpeed);
    updateCoordinate(y, i, height, rad, ySpeed);    
  }
}

void updateCoordinate(int[] coord, int i, int max, int rad, int speed) {
  coord[i] += speed;
  if ( (coord[i] >= max - rad) || (coord[i] < rad) ) {
    coord[i] -= 2*speed;
  } 
}
