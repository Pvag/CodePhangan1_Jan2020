// we define 3 objects of class Ball
Ball bouncy;
Ball biggie;
Ball tiny;

void setup() {
  size(400, 400);
  
  // initialize the object (don't forget this!)
  bouncy = new Ball(100, 100, 4, 7, 40);
  biggie = new Ball(200, 200, 10, 3, 80);
  tiny = new Ball(300, 200, -5, 4, 20);  

  biggie.paintInBlue(); // this sets the blue color for biggie
}

void draw() {
  refresh();
  
  bouncy.move();
  bouncy.render();
  
  // this will be more blue than the other balls
  biggie.move();
  biggie.render();
  
  tiny.moveRandom();
  tiny.render();
}

void refresh() {
  background(255);
}
