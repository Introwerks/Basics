float theta;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(0);
  theta = map(radians(frameCount)*75, 0, width, 0, 12);
  translate(width/2, height-75);
  branch(150);
}

void branch(float len) {
  stroke(255, 50);
  noFill();
  ellipse(0, 0, -len, -len);
  translate(0, -len);
  len*=0.66;
  if (len>3) {
    pushMatrix();
    rotate(theta);
    branch(len);
    popMatrix();
    pushMatrix();
    rotate(-theta);
    branch(len);
    popMatrix();
  }
}

