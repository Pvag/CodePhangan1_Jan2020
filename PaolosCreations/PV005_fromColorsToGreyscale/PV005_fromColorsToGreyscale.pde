// this sketch loads and image from the data folder,
// transforms each of its pixels from colors into greyscale
// and finally it shows the greyscale version
//
// pre-requisites: variables, arrays, loading an image from a file, objects, loops, callback

void setup() {
  size(500, 374); // this is also the size of the image
  noLoop();
}

void draw() {
  PImage photo = loadImage("palms.png");
  
  for (int i = 0; i < photo.pixels.length; i++) {
    // get the color of this pixel
    color c = photo.pixels[i]; // pixels is an array that has data for each pixel of the image
    // greyscale computed as average of the 3 color components
    int greyValue = int(( red(c) + blue(c) + green(c) )/3.);
    // update each pixel of the image with its correspondent value in greyscale
    photo.pixels[i] = color(greyValue);
  }
  
  image(photo, 0, 0);
  
  selectOutput("Select a file to write to:", "saveImage"); // callback
}

void saveImage(File selected) {
  if (selected != null) {
    save(selected.getAbsolutePath() + ".png");
  }
  else {
    println("User has not selected a valid output file: not saving the image.");
  }
}
