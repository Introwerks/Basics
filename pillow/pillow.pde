void setup() {
  size(500, 500);
}

void draw() {
  background(0, 0, 0);
  translate(width/2, height/2);
  noFill();
  stroke(255, 45);
  strokeWeight(1);

  for (int i = 0; i < 360; i+=5) {
    float angle = sin(radians(i/2-frameCount*8))*55;

    pushMatrix();
    rotate(radians(i*angle/500));
    ellipse(0, 0, i-400, i);
    popMatrix();
  }
}

