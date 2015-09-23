void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  noFill();
  stroke(255, 50);
  translate(width/2, height/2);
  for (int i=0; i<12; i++) {
    rotate(PI/6);
    lines(0, 70, 0);
  }
}

void lines(float x, float len, float y) {
  float x1 = sin(radians(frameCount)*2)*100;
  float y1 = cos(radians(frameCount)*2)*100;
  line(x, y, len, len);
  if (len > 20) {

    pushMatrix();
    lines(x1+len, len-15, y1+len);
    popMatrix();

    pushMatrix();
    lines(x1-len/2, len-15/2, y1-len/2);
    popMatrix();
  }
}

