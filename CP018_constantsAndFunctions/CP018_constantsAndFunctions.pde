void setup() {
  size(400, 300);
  noLoop();
}

void draw() {
  int a = 5, b = 7;
  // calling environment, with actual values (numbers)
  // variable
  int avg = average(a, b); // function call, with actual parameters
  println(avg);
  avg = average(10, 20); // i can re-assign avg
  println(avg);
  avg = average(100, 200); // i can re-assign avg, it is allowed
  println(avg);
  
  // constant
  final color pc = color(0, 160, 255); // Paolo's fav. color
  
  fill(pc);
  ellipse(100, 100, 40, 40);  
}

// called environment, with placeholder variables, that will be replaced
// by the actual value, after the call is made
//
// parameters are variables that are local to the environment of that function
int average(int dog, int cat) {
  
  int result = (dog + cat) / 2;
  
  return result;
}

// function declaration
//
// 1. type returned by function
// 2. function name
// 3. (
// 4. type of the first variable
// 5. name of the first variable
// 6. ,
// 7. type of the second variable
// 8. name of the second variable
// 9. )
// 10. {
// 11. put in the code that the function must execute
// 12. }
