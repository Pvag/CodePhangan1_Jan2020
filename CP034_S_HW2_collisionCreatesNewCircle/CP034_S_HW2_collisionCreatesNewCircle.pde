// HW
//
// 2. change the code, so that when 2 circles touch, they create a new circle, adding it to the canvas

// The way I have implemented it is to wait a bit before a circle can have the next child,
// otherwise there would be an overcrowding of the canvas in very little time!
//
// One cool feature that I have implemented is that the color of the new circle is the average
// of the fill color of the two parent circles.
//
// TODO: set a lifetime length for a circle and let it rest in peace, after its lifetime! // HW !

ArrayList<Circle> centerOfCircles;
int diam, rad;
int nCircles;

void setup() {
  size(400, 400);

  nCircles = 10;
  centerOfCircles = new ArrayList<Circle>();

  diam = 20;
  rad = diam/2;

  initPositions();
}

void draw() {
  //moveCirclesRandomly();
  refresh();
  moveCirclesCloseBy();
  detectCollision();
  drawCircles();
}

void refresh() {
  background(255);
}

void detectCollision() {
  ArrayList<Circle> newCircles = new ArrayList<Circle>();
  int nNewCircles = 0;
  for (int i = 0; i < nCircles; i++) {
    //PVector thisCircle = centerOfCircles.get(i).center;
    Circle thisCircle = centerOfCircles.get(i);
    for (int j = i + 1; j < nCircles; j++) {
      // compare each circle (j-th element in the centerOfCircles ArrayList) with thisCircle
      //if (j != i) {
        Circle otherCircle = centerOfCircles.get(j);
        if (areTouching(thisCircle, otherCircle)) {
          if (thisCircle.isFertile() && otherCircle.isFertile()) {
            Circle c = newCircleAtCollisionPoint(thisCircle, otherCircle);
            //c.setSameFillColorAs(thisCircle);
            c.setSameFillColorAsParentsAverage(thisCircle, otherCircle);
            newCircles.add(c);
            nNewCircles++;
            thisCircle.touched();
            otherCircle.touched();
          }
        }
      //}
    }
  }
  if (nNewCircles > 0) {
    for (int n = 0; n < nNewCircles; n++) {
      centerOfCircles.add(newCircles.get(n));
      nCircles++;
    }
  }
}

Circle newCircleAtCollisionPoint(Circle a, Circle b) {
  PVector collisionPoint = getCollisionPoint(a, b);
  Circle c = new Circle(collisionPoint, false);
  return c;
}

PVector getCollisionPoint(Circle a, Circle b) {
  PVector p1 = a.center;
  PVector p2 = b.center;
  int x, y;
  // p1 is more distant (from the origin of the canvas) than p2
  if (p1.mag() > p2.mag()) {
    x = int( (p1.x - p2.x)/2 + p2.x );
    y = int( (p1.y - p2.y)/2 + p2.y );
  }
  // p2 is more distant (from the origin of the canvas) than p1
  else {
    x = int( (p2.x - p1.x)/2 + p1.x );
    y = int( (p2.y - p1.y)/2 + p1.y );
  }
  PVector collisionPoint = new PVector(x, y);
  return collisionPoint;
}

boolean areTouching(Circle circleA, Circle circleB) {
  PVector c1 = circleA.center;
  PVector c2 = circleB.center;
  // next line uses Pythagora's famous theorem! (Distance between centers is the square root of the sum of: [the square of the difference between x coordinates and the square of the difference between y coordinates] )
  int distanceBetweenCenters = int( sqrt(pow(c1.x - c2.x, 2) + pow(c1.y - c2.y, 2)));
  return (distanceBetweenCenters <= diam);
}

void initPositions() {
  for (int i = 0; i < nCircles; i++) {
    Circle c = new Circle(newRandomCircle(), true);
    centerOfCircles.add(c);
  }
}

PVector newRandomCircle() {
    int randX = int( random(width - diam) + diam/2 );
    int randY = int( random(height - diam) + diam/2 );
    PVector circleCoord = new PVector(randX, randY);
    return circleCoord;
}

void drawCircles() {
  for (int i = 0; i < nCircles; i++) {
    centerOfCircles.get(i).render();
  }
}

void moveCirclesRandomly() {
  initPositions();
}

void moveCirclesCloseBy() {
  for (int i = 0; i < nCircles; i++) {
    int randXSpeed = int(random(3)) - 1;
    int randYSpeed = int(random(3)) - 1;
    PVector thisCircle = centerOfCircles.get(i).center;
    thisCircle.x += randXSpeed;
    thisCircle.y += randYSpeed;
    if ( (thisCircle.x >= width - rad) || (thisCircle.x < rad) ) {
      thisCircle.x -= 2*randXSpeed;
    }
    if ( (thisCircle.y >= height - rad) || (thisCircle.y < rad) ) {
      thisCircle.y -= 2*randYSpeed;
    }
  }
}
