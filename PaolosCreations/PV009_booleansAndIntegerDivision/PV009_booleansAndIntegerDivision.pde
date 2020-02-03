// this sketch exploits -->integer division<-- to find whether an integer number is even or odd
//
// contains HW - see comments!

void setup() {
  noLoop();
  runExercise();
}

// this function is a wrapper that runs the exercise
void runExercise() {
  // try it with 3
  int n = 3;
  boolean nIsEven = isEven(n);
  printResult(nIsEven, n);
  //now try it with 4
  n = 4;
  printResult(isEven(n), n);
}

// returns true if n is even; false if n is odd
boolean isEven(int n) {
  if ((n/2)*2 == n) { // this is a nice, old trick: what is happening? HW: Explain!
    return true;
  }
  else {
    return false;
  }
}

// this functions makes a report the result of the computation, i.e. if n is even or odd
void printResult(boolean nIsEven, int n) {
  if (nIsEven) {
    println(n + " is even");
  }
  else {
    println(n + " is odd");
  }
}
