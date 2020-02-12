class Ball {
  // variables defined in the top part of the class
  // are called properties
  //
  // these are the properties of any object (instance) of class Ball
  int x;
  int y;
  int xSpeed, ySpeed;
  int diameter;
  int amountOfBlue;
  
  // initializer of the class Ball
  //
  // it sets the properties to values that are specific to THIS instance of the class Ball
  // (i.e. to the object that will be created out of this call)
  // The calling environment requests an instance with properties set to the values
  // given as inputs in parenthesis.
  Ball(int x0, int y0, int xSpeed, int ySpeed, int d) {
    x = x0;
    y = y0;
    // avoid name clashes using the 'this' keyword
    // note: this refers to the specific instance that is created out this call,
    //       and not to the class! It refers to the object being created.
    this.xSpeed = xSpeed; // we'll talk more about the 'this' keyword
    this.ySpeed = ySpeed;
    diameter = d;
    
    amountOfBlue = 0; // defaults to black
  }
  
  // functions defined inside a class
  // are called 'methods'
  
  // * methods of the class Ball *
  
  void render() {
    pushStyle();
    fill(0, 0, amountOfBlue);
    circle(x, y, diameter);
    popStyle();
  }
  
  void paintInBlue() {
    amountOfBlue = 255;
  }

  void moveRandom() {
    x = int(random(width - diameter/2) + diameter/2);
    y = int(random(height - diameter/2) + diameter/2);
  }
  
  void move() {
    final int ballRadius = diameter/2;
    if (x >= width - ballRadius || x <= ballRadius) xSpeed = -xSpeed;
    if (y >= height - ballRadius || y <= ballRadius) ySpeed = -ySpeed;
    x += xSpeed;
    y += ySpeed;
  }
}
