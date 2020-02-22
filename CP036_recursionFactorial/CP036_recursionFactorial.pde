// Humans can do iterations,
// computers can do recursion.

void setup(){
  noLoop();
}

void draw(){
  //int r = factorialRecursive(4); // I am expecting 24
  //int r = factorialRecursiveOneLine(4); // I am expecting 24
  int r = factorialIterative(4);
  println("factorial of 4 is: " + r);
}

// 4! = 4 * 3 * 2 * 1
int factorialRecursive(int n) {
  if (n > 1) return n*factorialRecursive(n-1);
  else return 1;
}

// one-line if-else
// (condition) ? do this if true : do this if false;
int factorialRecursiveOneLine(int n) {
  return (n > 1) ? n*factorialRecursiveOneLine(n-1) : 1;
}

int factorialIterative(int n) {
  int result = 1;
  for (int i = n; i > 1; i--) {
    result = result * i;
  }
  return result;
}
