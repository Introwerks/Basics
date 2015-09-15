void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < width; i+=40) {
    for (int j =0; j<height; j+=40) {
      float anglea = sin(radians((i)/5-frameCount*4))*200;
      float angleb = cos(radians((j)/5-frameCount*4))*200;
      noFill();
      stroke(255, 20);
      ellipse(0, 0, radians(i*anglea/4), radians(j*angleb/4));
    }
  }
}

