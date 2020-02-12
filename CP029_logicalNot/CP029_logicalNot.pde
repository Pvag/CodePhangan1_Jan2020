boolean maybe;

maybe = true;
println(maybe); // true

// ways to set maybe to false:
//
// #1: set it to false directly
//maybe = false;
//
// #2: set it to not true
//maybe = !true;
//
// #3: set it to not itself
maybe = !maybe;
println(maybe); // false

maybe = !maybe;
println(maybe); // true
