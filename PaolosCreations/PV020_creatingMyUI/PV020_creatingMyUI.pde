// change the blue value of the background using the slider at the top left of the screen
//
// info and exemples about the ControlP5 library here: http://www.sojamo.de/libraries/controlP5/#examples

import controlP5.*;

ControlP5 uiManager;

int blueValue;

void setup() {
  size(400, 400);
  uiManager = new ControlP5(this);
  // add a slider to the ui manager
  uiManager.addSlider("blueSlider") // this will be our way to call the slider
           .setPosition(10, 10)
           .setRange(0, 255)
           .setValue(200)
           .setDecimalPrecision(0) // only work with integer values for the blue component
           .setLabel("Amount of Blue");
}

void draw() {
  refresh();
}

void refresh(){
  background(0, 0, blueValue);
}

// this function must have the same name as the slider name given with 'addSlider(...)' - it is automatically called when slider changes
void blueSlider(float value) {
  blueValue = int(value);
}
