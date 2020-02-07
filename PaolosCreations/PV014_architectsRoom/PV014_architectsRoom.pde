import processing.video.*; //<>//

Capture cam;

void setup() {
  size(1280, 720);
  initCamera();
}

void draw() {
  if (cam.available() == true) {
    cam.read();
    cam.loadPixels();
    //cam.filter(GRAY);
    //cam.filter(INVERT);
    //greyscaleFilter();
    //applyFilter("greyscale");
    //applyFilter("onlyBlue");
    //applyFilter("onlyRed");
    applyFilter("onlyGreen");
    cam.updatePixels();
    sameFrameInGrid();
  }
}

// changes number of repetions of the same frame according to mouseX
void sameFrameInGrid() {
  final int scaleFactor = int(map(mouseX, 0, width, 1, 10));
  final int videoWidth = cam.width/scaleFactor;
  final int videoHeight = cam.height/scaleFactor;
  final int nHorizVideos = width/videoWidth;
  final int nVertVideos = height/videoHeight;
  for (int i = 0; i < nHorizVideos; i++) {
    for (int j = 0; j < nVertVideos; j++) {
      image(cam, i*videoWidth, j*videoHeight, videoWidth, videoHeight);
    }
  }
}

void applyFilter(String filter) {
  switch (filter) {
    case "greyscale": {
      greyscaleFilter();
      break;
    }
    case "onlyBlue": {
      onlyBlueFilter();
      break;
    }
    case "onlyRed": {
      onlyRedFilter();
      break;
    }
    case "onlyGreen": {
      onlyGreenFilter();
      break;
    }
    default: {
      break;
    }
  }
}

void greyscaleFilter() {
  for (int i = 0; i < cam.pixels.length; i++) {
    color pixelColor = cam.pixels[i];
    cam.pixels[i] = color(int((red(pixelColor) + green(pixelColor) + blue(pixelColor))/3.)); // avg red, green, blue
  }
}

void onlyBlueFilter() {
  for (int i = 0; i < cam.pixels.length; i++) {
    color pixelColor = cam.pixels[i];
    cam.pixels[i] = color(0, 0, blue(pixelColor));
  }
}

void onlyRedFilter() {
  for (int i = 0; i < cam.pixels.length; i++) {
    color pixelColor = cam.pixels[i];
    cam.pixels[i] = color(red(pixelColor), 0, 0);
  }
}

void onlyGreenFilter() {
  for (int i = 0; i < cam.pixels.length; i++) {
    color pixelColor = cam.pixels[i];
    cam.pixels[i] = color(0, green(pixelColor), 0);
  }
}

void initCamera() {
  String[] cameras = Capture.list();
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    //listAvailableCameras(cameras);
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]); // 1280x720 fps=30
    cam.start();
  }
}

void listAvailableCameras(String[] cameras) {
  println("Available cameras:");
  for (int i = 0; i < cameras.length; i++) {
    println(i + ": " + cameras[i]);
  }
}
