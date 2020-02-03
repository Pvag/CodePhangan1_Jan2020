// Draws a "clickable" rectangle (light switcher) and a circle (light bulb):
// clicking on the light switcher will light up or turn off the light bulb,
// according to the textx that shows up inside the clickable light switcher.

// homework
//
// 1. draw the filament inside the light bulb (something like /\/\/\ )
// 2. draw light rays outside of the light bulb, only when the light is on
// 3. draw the bottom of the light bulb (some sort of rounded cone)
// 4. refactor: turn the conditions that are inside the 'mouseClicked' function into functions,
//    so that the code will become more readable ( e.g. if (mouseIsWithinLightSwitcherHorizontally() )
//
// hint: you can use the functions 'line', 'arc' and others: find info. on the Processing reference page

boolean lightIsOn;
int lightSwitcherTopLeftX;
int lightSwitcherTopLeftY;
int lightSwitcherWidth;
int lightSwitcherHeight;
int lightBulbCenterX;
int lightBulbCenterY;
int lightBulbDiam;

void setup() {
  size(600, 400);

  lightBulbCenterX = 300;
  lightBulbCenterY = 200;
  lightBulbDiam = 100;
  lightSwitcherTopLeftX = lightBulbCenterX - lightBulbDiam/2;
  final int spacingBetweenLightBulbAndLightSwitcher = 25;
  lightSwitcherTopLeftY = lightBulbCenterY + lightBulbDiam/2 + spacingBetweenLightBulbAndLightSwitcher;
  lightSwitcherWidth = lightBulbDiam;
  lightSwitcherHeight = 30;

  lightIsOn = false; // a new type of variable: boolean (it can have value either false or true)
}

// as you can see, I like to keep the draw function neat and clean:
// I implement functions and I put all the stuff that I want to
// be executed inside those functions; then I call the functions
// that I need right from inside the draw function
//
void draw() {
  background(255); // refresh canvas at each frame
  updateLightSwitcher(); // update the state of the light switcher
  updateLightBulb(); // update the state of the light bulb
}

// takes care of updating everything related to the light switcher
void updateLightSwitcher() {
  final int lightSwitcherUnpressedColor = 200;
  final int lightSwitcherPressedColor = 80;
  final int textUnpressedColor = 0;
  final int textPressedColor = 255;
  final String textUnpressed = "Turn On!";
  final String textPressed = "Turn Off!";
  String lightSwitcherText;
  if (lightIsOn) {
    fill(lightSwitcherPressedColor); // set the color for the light switcher in its pressed state
  } else {
    fill(lightSwitcherUnpressedColor); // set the color for the light switcher in its unpressed state
  }
  rect(lightSwitcherTopLeftX, lightSwitcherTopLeftY, lightSwitcherWidth, lightSwitcherHeight); // actually draw the light switcher
  noFill();
  final int lightSwitcherBorderSpacing = 2;
  rect(lightSwitcherTopLeftX - lightSwitcherBorderSpacing, lightSwitcherTopLeftY - lightSwitcherBorderSpacing, lightSwitcherWidth + 2*lightSwitcherBorderSpacing, lightSwitcherHeight + 2*lightSwitcherBorderSpacing);
  if (lightIsOn) {
    fill(textPressedColor);
    lightSwitcherText = textPressed;
  } else {
    fill(textUnpressedColor);
    lightSwitcherText = textUnpressed;
  }
  text(lightSwitcherText, lightSwitcherTopLeftX + 23, lightSwitcherTopLeftY + 18);
}

// takes care of updating everything related to the light bulb
void updateLightBulb() {
  final color lightOnColor = color(255, 255, 0);
  final color lightOffColor = color(255);
  if (lightIsOn) {
    fill(lightOnColor);
  } else {
    fill(lightOffColor);
  }
  ellipse(lightBulbCenterX, lightBulbCenterY, lightBulbDiam, lightBulbDiam);
}

// This function is called only if the user has clicked the mouse.
// I want to check if the click was on the light switcher:
// if so, lightIsOn is set to the opposite value that it was storing before the click;
// otherwise, if the click was somewhere else, lightIsOn is not changed.
void mouseClicked() {
  // if the cursor is on top of the light switcher horizontally
  if (mouseX > lightSwitcherTopLeftX && mouseX < lightSwitcherTopLeftX + lightSwitcherWidth) {
    // if the cursor is on top of the light switcher vertically
    if (mouseY > lightSwitcherTopLeftY && mouseY < lightSwitcherTopLeftY + lightSwitcherHeight) {
      // update lightIsOn with the opposite of its actual value: if true --> false; if false --> true
      lightIsOn = !lightIsOn;
    }
  }
}
