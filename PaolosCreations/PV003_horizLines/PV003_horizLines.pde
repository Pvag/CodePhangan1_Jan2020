// draws horizontal lines with different stroke weight
//
// suggested modification: change the color of the lines, maybe from black (top) to white (bottom)

void setup() {
  size(240, 600);
  noLoop();
}

void draw() {
  background(0);
  stroke(40);
  
  final int nLines = 20;
  final int lateralSpacing = 20;
  final int verticalSpacing = 20;
  final int lineHeight = (height - verticalSpacing)/nLines;
  for (int i = 0; i < nLines; i++) {
    strokeWeight(i+1);
    line(lateralSpacing, verticalSpacing + i*lineHeight, width - lateralSpacing, verticalSpacing + i*lineHeight);
  }
}
