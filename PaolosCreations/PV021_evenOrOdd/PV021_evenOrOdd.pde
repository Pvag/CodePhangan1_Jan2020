// how to know if a number is even or odd

void setup() {
  int n = 6; // pari

  checkEven(n);
  checkEven(n+1);
}

//trick to check if a number is even

void checkEven(int n) {
  if (n/2*2 == n) {
    println(n + " is even");
  } else {
    println(n + " is odd");
  }
}
