// draws a grid of dots ... still to finish
//
// inspired by the design of the front grid of Mac Pro (2019 model)

void setup() {
  size(800, 300);
  noLoop();
}

void draw() {
  background(215);
  
  drawGridOfDots();
}

// variable spacing
int drawRowOfDots(final int x0, final int dotsDiam, final int nDots, final int y) {
  final color dotsColor = 0; // black color
  final int lateralSpacing = 20;
  //final int dotsSpacing = 20;
  //final int slotSize = dotsDiam + dotsSpacing; // a slot goes from the center of a dot to the center of the next dot
  final int slotSize = (width - 2*x0 - 2*lateralSpacing - dotsDiam)/(nDots - 1);
  //final int dotsSpacing = slotSize - dotsDiam;

  //final int nSpaces = nSlots;
  //final int nDotsPerRow = nSlots;
  //final int verticalSpacing = lateralSpacing;
  //final int y = verticalSpacing + dotsDiam/2;
  
  noStroke();
  fill(dotsColor, 17);
  for (int i = 0; i < nDots; i++) {
    ellipse(x0 + lateralSpacing + i*(slotSize) + dotsDiam/2, y, dotsDiam, dotsDiam);
  }
  
  return slotSize;
}

void drawGridOfDots() {
  int slotSize;
  final int verticalSpacing = 40;
  final int topSpacing = 40;
  for (int i = 0; i < 10; i++) {
    slotSize = drawRowOfDots(0, 30, 12, topSpacing + (i++)*verticalSpacing);
    drawRowOfDots(slotSize/2, 30, 11, topSpacing + i*verticalSpacing);
  }
}

// fixed spacing and dots diam
//void drawRowOfDots(final int dotsDiam, final int y) {
//  final color dotsColor = 0; // black color
//  final int lateralSpacing = 20;
//  final int dotsSpacing = 20;
//  final int slotSize = dotsDiam + dotsSpacing; // a slot goes from the center of a dot to the center of the next dot
//  final int nSlots = (width - 2*lateralSpacing - dotsDiam)/(slotSize);
//  final int nSpaces = nSlots;
//  final int nDotsPerRow = nSlots;
//  //final int verticalSpacing = lateralSpacing;
//  //final int y = verticalSpacing + dotsDiam/2;
  
//  noStroke();
//  fill(dotsColor);
//  for (int i = 0; i < nDotsPerRow; i++) {
//    ellipse(lateralSpacing + i*(slotSize) + dotsDiam/2, y, dotsDiam, dotsDiam);
//  }
//}
