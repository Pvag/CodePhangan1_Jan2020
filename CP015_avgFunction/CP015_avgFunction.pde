// practicing with implementing functions
//
// difference between functions that don't return and functions that do

void setup() {
  size(100, 100);
  noLoop();
}

void draw() {
  //printAverage(10, 20, 30); // function call
  //printAverage(100, 200, 300);
  
  // this prints inside the function itself, without returning any value
  // we cannot use the average that was computed, we can only read its value
  // in the console
  printAverage(1.0, 5.0, 10.0);

  // this returns the average computed by the function, so now I can use
  // it the way I prefer
  float avg = computeAverage(3.0, 5.0, 12.0);
  println(avg);
  
  float codersTableTotal = total(150.00, 100.00, 90.50);
  println("The total is: " + codersTableTotal + " euro."); // + concatenates strings
}

// function implementation
//
// void functions do not return
void printAverage(float a, float b, float c) {
  float result = (a + b + c)/3.0;
  println(result);
}

// this function returns a float
float computeAverage(float a, float b, float c) {
  float result = (a + b + c)/3.0;
  return result;
}

// TODO refactor this so that it takes any number of clients as input (using arrays)
float total(float client1, float client2, float client3) {
  float subtotal = client1 + client2 + client3;
  float twentyPercent = 0.2*subtotal;
  float tip = 0.1*subtotal;
  float result = subtotal + twentyPercent + tip;
  return result;
}
