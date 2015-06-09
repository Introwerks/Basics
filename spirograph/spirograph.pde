float radius = 200;
float x, y;
float theta = 0;
float theta_vel =0;
float theta_acc=0.05;
float rotX;
float rotY;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  pushMatrix();
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);
  popMatrix();  

  fill(255);
  stroke(255);
  strokeWeight(0.5);
  
  translate(width/2, height/2);
  
  rotX = radius * cos(theta);
  rotY = radius * sin(theta);
  
  line(0, rotY, rotX, 0);
  line(0, rotY/2, 0, rotY);
  line(0, rotY/2, rotX, 0);
  line(rotX/2, 0, rotX, 0);
  line(rotX/2, 0, 0, rotY);
  line(rotX/2, 0, 0, rotY/2);
  line(0, rotY, rotX, rotY);
  line(rotX, 0, rotX, rotY);
  line(rotX, rotY, rotX/2, 0);
  line(rotX, rotY, 0, rotY/2);

  ellipse(rotX, rotY, 5, 5);
  
  theta_vel += theta_acc;
  theta = theta_vel;
}

