void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(0);
  translate(width/2, height/2);

  for (int i=0; i<720; i+=5) {
    rotate(radians(i/2-frameCount));
    noStroke();
    rect(i, 0, sin(radians(i/2-frameCount))*50, sin(radians(i/2-frameCount))*50);
  }
}

