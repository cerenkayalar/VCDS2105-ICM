/*
  YasarUni
  vcds2015-ICM / week2
  @ceren kayalar
*/

void setup() {
  size(600, 600);
  background(33, 50, 67); // comment this if you want to clear the background in draw()
  smooth();
  //frameRate(1);
}

void draw() {
 // background(50, 100, 100); // uncomment if you want to start with a clear canvas in every draw()
  
  frame.setTitle(mouseX + ", " + mouseY); // keep track of the mouse position in the window title 
  
  stroke(120);
  fill(#1FA4AA);
  rect(100, 100, 50, 100);
  
  rectMode(CENTER);
  fill(255, 0, 0, 180);
  rect(100, 100, 50, 100);
  
  print(123);
  println("Hello World!");
  
  fill(#12FF37, 150); // green shade
  noStroke();
  ellipse(mouseX, mouseY, 25, 75); 
  
  fill(200, 200, 200, 100); // gray shade
  ellipse(mouseY, mouseX, 25, 75); // tricky!
  
  fill(#FCFC61, 150); // yellow shade
  ellipse(width-mouseX, height-mouseY, 25, 75); // tricky!

  fill(#986597, 150); // purple shade
  ellipse(width-mouseY, height-mouseX, 25, 75); // tricky!
}


