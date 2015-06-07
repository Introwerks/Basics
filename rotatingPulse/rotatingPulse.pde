int diam = 0;
int pulse = 1;
float rot = 0;

void setup() {
  size(500, 500, P3D);
  background(0);
  smooth();
}

void draw() {
  pushMatrix();
  translate(0, 0, -500);
  rectMode(CENTER);
  noStroke();
  fill(0, 40);
  rect(0, 0, width*4, height*4);
  popMatrix();

  if (diam > 399) {
    pulse = 0;
  }

  if (diam < 1) {
    pulse = 1;
  }

  if (pulse == 1) {
    diam+=5;
  }

  if (pulse == 0) {
    diam-=5;
  }
    
  translate(width/2, height/2, 0);
  strokeWeight(3);
  stroke(255, 100);
  noFill();
  rotateX(rot);
  rotateY(rot);
  ellipse(0, 0, diam, diam);
  rot+=0.05;
}

