class Ball {
  int x, y;
  int xSpeed, ySpeed;
  int ballRadius;
  
  Ball(int x0, int y0, int xSpeed, int ySpeed, int ballRadius) {
    this.x = x0;
    this.y = y0;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.ballRadius = ballRadius;
  }
  
  // was moveBall in the procedural version
  Ball move() {
    if (x >= width - ballRadius || x <= ballRadius) xSpeed = -xSpeed;
    if (y >= height - ballRadius || y <= ballRadius) ySpeed = -ySpeed;
    x += xSpeed;
    y += ySpeed;
    
    // return the address of the instance of class Ball on which the move() was called onto
    return this;
  }
  
  // was renderBall in the procedural version
  void render() {
    final color ballColor = color(200, 100, 0);
    pushStyle();
    noStroke();
    fill(ballColor);
    circle(x, y, 2*ballRadius);
    popStyle();
  }
}
