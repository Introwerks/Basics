float rot = 0;

void setup() {
  size(500, 500, P3D);
  background(0);
  smooth();
}

void draw() {
  background(0);
  lights();
  translate(width/2, height/2);
  for (int i = 0; i < 50; i +=5) {
    rotateY(rot);
    //rotateX(radians(40));
    fill(255, 10);
    stroke(255);
    box(200);
  }
  rot+=.005;
}

