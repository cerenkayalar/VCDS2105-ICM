
/* 
 
 vcds2105f19
 @cerenkayalar
 week11 
 
 nested while loops
 
 */

int x = 12;
int y = 15;

void setup() {
  size(800, 200);
}

void draw() {

  background(255);
  fill(120);

  while (x <= width) {
    y = 15;
    while (y <= height) {
      ellipse(x, y, 10, 10);
      y += 18;
    }
    x += map(mouseX, 0, width, 10, 18);
  }

  x=12;
  println(x);
}
