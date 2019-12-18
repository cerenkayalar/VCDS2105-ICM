// vcds2105f19
// week 13 - functions
// @cerenkayalar

int i = 0;

void setup() {

  size(800, 200);
  noFill();
}

void draw() {
  background(100);


  stroke(255, 100, 100);
  pushMatrix();
  translate(100, 100);
  rotate(radians(i));
  pattern(0, 0, 15, 30);

  stroke(255, 200, 100);
  pushMatrix();
  rotate(radians(-2*i));
  pattern(0, 0, 45, 30);
  popMatrix();

  popMatrix();
  i+=5;

  stroke(100, 255, 255);
  pushMatrix();
  translate(300, 100);
  rotate(radians(i/5));
  scale(noise(i));
  pattern(0, 0, 45, 10);
  popMatrix();

  pattern(width/2, height/2, 30, color(100, 255, 100), true, 10);
  pattern(width - 150, height/2, 100, color(100, 100, 255), false, 60);

  if (mousePressed)
    pattern(mouseX, mouseY, 10, color(255, 255, 100), true, 20);
}

void pattern(int x, int y, int r, color c, boolean gradient, int angle) {
  for (int degree = 0; degree < 360; degree+= angle) { 
    if (gradient)
      stroke(c, map(degree, 0, 360, 0, 255));
    else
      stroke(c);
    ellipse(x + r*cos(radians(degree)), y + r*sin(radians(degree)), r*2, r*2);
  }
}

void pattern(int x, int y, int r, int angle) {
  for (int degree = 0; degree < 360; degree+= angle) 
    ellipse(x + r*cos(radians(degree)), y + r*sin(radians(degree)), r*2, r*2);
}
