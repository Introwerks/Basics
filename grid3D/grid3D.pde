float theta, theta_vel, extZ;

void setup() {
  size(500, 500, P3D);
  background(0);
  noStroke();
  theta =0;
  theta_vel = .02;
}

void draw() {
  background(0);
  lights();
  translate(0, 0, -100); 
  for (int z = 0; z <= 500; z += 20) {
    for (int y = 0; y <= 500; y += 20) {
      for (int x = 0; x <= 500; x += 20) {       
        extZ = tan(theta);
        drawPoint(x, y, z*extZ);
      }
    }
  } 
  theta += theta_vel;
}

void drawPoint(float x, float y, float z) {
  pushMatrix();
  translate(x, y, z);
  noFill();
  stroke(255);
  strokeWeight(2);
  point(0, 0, 0);
  popMatrix();
}

