/* 

 vcds2105f19
 @cerenkayalar
 week5
 
 // moving a shape in horizontal and vertical axis
 // intro to processing functions other than setup(), draw(): mouseReleased()
 // how to change a shape's size/color/position every draw? Define a variable 
 and logic for it (i.e.: basic addition and random() number generation)
 // recommended code structure: draw shapes and update their state (logic/algorithm)
 // how to implement decisions? if statements and boolean expressions (comparisons: <, >, <=, >=, ==, !=)
 
 */

float circleX, circleY;
float midCircleSize;

void setup() {
  //size(800, 200);
  fullScreen();
  noStroke();
  circleX = 0;
  circleY = height/2;
  midCircleSize = 50;
}

void draw() {

  // Drawing stuff
  if (!mousePressed)
    background(255);

  fill(10, 230, 51, 100); // mid circle
  ellipse(circleX, circleY, midCircleSize, midCircleSize);

  fill(230, 10, 51, 100); // top circle
  ellipse(2*circleX, circleY/2, 50, 50);

  fill(10, 51, 230, 100); // bottom circle
  ellipse(circleX/2, circleY*3/2, 50, 50);


  // Logic
  circleX += 5;
  //circleY = circleY + 1;  //circleY++;

  if (circleX > width) 
    circleX = 0;

  println(circleX);
  //println(frameRate);
}

void mouseReleased() {
  midCircleSize = random(0, 200);
}
