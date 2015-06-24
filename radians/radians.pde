int radius = 100;

void setup() {
  size(500, 500, P3D);
  stroke(255);
}
void draw() {
  background(0); 
  lights();
  translate(width/2, height/2, 0);
  rotateX(radians(90));
  rotateZ(frameCount * 0.07);
  
  float s = 0;
  float t = 0;
  float lastx = 0;
  float lasty = 0;
  float lastz = 0;
  
  
  while (t < 360) {
    s += 1;
    t += .5;
    
    
    float radianS = radians(s);
    float radianT = radians(t);
    float thisx = (radius * cos(radianS) * cos(radianT));
    float thisy = (radius * sin(radianS) * cos(radianT));
    float thisz = (radius * sin(radianT)* cos(radianS)); 


    strokeWeight(20);
    stroke(255, 50);

    point(lastx, lasty, lastz);

    lastx = thisx;
    lasty = thisy;
    lastz = thisz;
  }
}

