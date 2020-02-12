// modify HW015 so that it draws every other flag in a row
// and every other flag in the next row but alternately,
// like this (f means flag, x means missing flag):
//
// f x f x f x f
// x f x f x f x
// f x f x f x f

boolean startAtBeginning;

void setup() {
  size(600, 400);
  startAtBeginning = true;
}

void draw() {  
  gridOfEveryAlternateRows();
}

void gridOfEveryAlternateRows() {
  for (int row = 1; row <= 6; row++) {
    fill(0, 100, 40*row);
    if (startAtBeginning) {
      rowOfEveryOtherCircle(1, row*40);
    }
    else {
      rowOfEveryOtherCircle(2, row*40);
    }
    // '!' means 'not' : it negates what comes after it
    // e.g. !true --> false
    //      !false --> true
    startAtBeginning = !startAtBeginning; // TODO discuss this together
  }
}

void rowOfEveryOtherCircle(int startingFrom, int y) {
  final int nOfCircles = 10;
  for (int i = startingFrom; i <= nOfCircles; i+=2) {
    ellipse(i*40, y, 30, 30);
  }
}
