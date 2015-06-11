float xstart, xnoise, ystart, ynoise;

void setup() {
  size(500, 500,P3D);
  background(0);
  noStroke();

  xstart = 5;
  ystart = 5;
}

void draw() {
  background(0);
  xstart +=0.1;
  ystart +=0.1;
  ynoise = ystart;
  for (int y = 0; y<= height; y+=10) {
    for (int x = 0; x<=width; x+=10) {
      ynoise += 0.1;
      xnoise+= 0.1;
      xnoise = xstart;
      drawLine(x, y, noise(xnoise, ynoise));
    }
  }
}

void drawLine(float x, float y, float noiseFactor) {
  pushMatrix();
  translate(x, y, -300);
  rotate(noiseFactor * radians(360));
  stroke(255, 50);
  rect(0, 0, 40, 0);
  popMatrix();
}

