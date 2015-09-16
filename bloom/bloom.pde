void setup() {
  size(500, 500, P3D);
  rectMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  for (int i = 3; i < 360; i+=6) {
    for (int j= 3; j < 360; j+=6) {   
      pushMatrix();
      translate(0, 0, -i);
      rotate(i);     
      noStroke();
      fill(255, i/2);
      ellipse(i/2, j/2, sin(radians(j-(frameCount*4)))*24, sin(radians(j-(frameCount*4)))*24);
      popMatrix();
    }
  }
}

