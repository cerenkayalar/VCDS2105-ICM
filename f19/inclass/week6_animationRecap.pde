/* 
 
 vcds2105f19
 @cerenkayalar
 week6
 
 */

int posX, posY; // global variable: they are defined outside code blocks


void setup() {
  size(800, 400);
  posX = width/2 - 10;
  posY = height/2;
}

void draw() {
  background(255);
  color c = color(120, 110, 50); // local variable

  println("Hello World!  " + int(frameRate) + " FPS");

  ellipse(posX, posY, 50, 50);
  stroke(c);
  line(width/2, 0, width/2, height);
  //posX = posX + 10;
  if (mousePressed)
    posX += 2;

  if (posX > width)
    posX = width/2;

  if (keyPressed && (key == 'r' || key == 'R')){
    posX = width;
    posY = 0;
  }
}
