float k, t;
float x, y;

void setup() {
  size(500, 500);
  t = 0;
  k = .2;
}

void draw() {

  pushMatrix();
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);
  popMatrix();  


  for ( int i = 25; i < width; i+=50) {
    for ( int j = 25; j < height; j+=50) {

      pushMatrix();
      x = cos(k*t) * cos(t)*200;
      y = cos(k*t) * sin(t)*200;
      stroke(255, 50);
      line(i, j, x+width/2, y+width/2);
      fill(0);
      popMatrix();
    }
  }
  t+=.09;
  //saveFrame("rosegrid-#####.jpg");
}

