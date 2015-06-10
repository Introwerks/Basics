float radius = 200;
float centX = 0;
float centY = 0;
float x, y;
float angle = 0;
float startx, starty;
float endx, endy;

void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(0);
  translate(width/2, height/2, -500);
  for (int ang =0; ang <=360; ang+=15) {

    float rad = radians(ang+angle);
    float rad2 = radians(ang+angle) + radians(angle);
    float x1 = centX +(radius * cos(rad));
    float y1 = centY +(radius * sin(rad));
    float opprad = rad + PI;
    float x2 = centX +(radius * cos(opprad));
    float y2 = centY +(radius * sin(opprad));

    starty = x1+(cos(rad2)*100);
    startx = y1+(sin(rad2)*100);
    endx = x2+(cos(rad2)*100);
    endy = y2+(sin(rad2)*100);
    
    stroke(255);
    line(startx, starty, endx, endy);
    noStroke();
    fill(255, 200);
    ellipse(startx, starty, 20, 20);
    ellipse(endx, endy, 20, 20);
    angle += 0.07;
  }
}

