float endx;
float endy;
float starty;
float startx;
float angle = 0;

void setup() {
  size(500, 500,P3D);
  smooth();
  stroke(255,100);
}

void draw() {
  background(0);
  for (int x = 20; x < width-20; x++) {
    float rad = radians(angle);
    starty = 250+(sin(rad)*100);
    startx = 250+(cos(rad)*100);
    
    line(startx, starty, endx, endy);
 
    endx = x;
    endy = starty; 
    angle += .8;
  }    
}


