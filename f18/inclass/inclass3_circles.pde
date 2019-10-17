/*
  YasarUni
  vcds2105f18-ICM / week5
  @ceren kayalar
*/

float mappedMouseX;

void setup() {
  
  size(400, 400);
  noStroke();
  smooth();
  rectMode(CENTER);
  mappedMouseX =0;
}

void draw() {
  
  background(255);
  surface.setTitle(mouseX + ", " + mouseY); // keep track of the mouse position in the window title 
  println("mouse x, y: " + mouseX + ", " + mouseY); // keep track of the mouse position in the console
 
  mappedMouseX = map(mouseX, 0, width, 0, 255);
  stroke(mappedMouseX);
 
  fill(255, mouseY, mappedMouseX, (mappedMouseX+mouseY)/2);
  ellipse(width/2, height/2, 100, 100);
  
  println("mouse x (mapped to 0-255): " + mappedMouseX);
}
