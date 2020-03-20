class Circle {
  PVector center;
  boolean fertile;
  int timeOfLastPregnancy;
  int timeBetweenTwoPregnancies;
  color fillColor;
  int nOfMating;
  
  Circle(PVector center, boolean fertile) {
    this.center = center;
    this.fertile = fertile;
    if (!fertile) timeOfLastPregnancy = millis();
    timeBetweenTwoPregnancies = 5000; // 5000 milliseconds, 5 seconds
    fillColor = color(random(256), random(256), random(256));
    nOfMating = 0;
  }

  void setSameFillColorAsParentsAverage(Circle parentA, Circle parentB) {
    color avgColor = color((red(parentA.fillColor) + red(parentB.fillColor))/2, (green(parentA.fillColor) + green(parentB.fillColor))/2, (blue(parentA.fillColor) + blue(parentB.fillColor))/2);
    this.fillColor = avgColor;
  }
  
  void justMated() {
    timeOfLastPregnancy = millis();
    //fertile = false;
  }
  
  void render() {
    pushStyle();
    fill(fillColor);
    circle(center.x, center.y, diam);
    popStyle();
  }

  void setSameFillColorAs(Circle other) {
    this.fillColor = other.fillColor;
  }

  boolean isFertile() {
    refreshFertility();
    return fertile;
  }
  
  void touched() {
    refreshFertility();
    if (fertile) {
      justMated();
      nOfMating++;
    }
  }
  
  void refreshFertility() {
    int now = millis();
    if ( (now - timeOfLastPregnancy) > timeBetweenTwoPregnancies ) fertile = true;
    else fertile = false;
  }
}
