int rectWidth = 0;
int check;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(0);
  if (rectWidth > 749) {
    check = 1;
  }
  if (rectWidth < -249) {
    check = 0;
  }
  if (check == 0) {
    rectWidth+=10;
  }
  if (check==1) {
    rectWidth-=10;
  }
  for (int y = 5; y < height; y+=20) {
    fill(255);
    rect(width/2, y, width-(y+rectWidth), 10);
  }
}


