void setup() {
  size(400, 400);
  noLoop();
}

void draw() {
  int n = 5;
  //println(n/2*2); // 4 (different number than n)
  
  n = 8;
  //println(n/2*2); // 8 (same number as n)
  
  printEvenOrOdd(n);
  printEvenOrOdd(7);
}

boolean isEven(int n) {
  return (n/2*2 == n);
}

void printEvenOrOdd(int n) {
  if (isEven(n)) {
    println(n + " is an even number");
  }
  else {
    println(n + " is an odd number");
  }
}
