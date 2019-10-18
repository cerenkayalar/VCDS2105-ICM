
/*
  YasarUni
  vcds2105f18-ICM / week4
  @ceren kayalar
*/

int rope_x1, rope_x2, rope_x3;
int rope_y1, rope_y2, rope_y3;

int sunXPos; 
float sunYPos;
int sunWidth, sunHeight;

int seaTopLeftXPos;
int seaTopLeftYPos;

void setup() {
  size(400, 400);
  
  rope_x1 = mouseX;
  rope_y1 = mouseY;
  
  rope_x2 = 233;
  rope_y2 = 88;
  
  rope_x3 = 276;
  rope_y3 = 84;
  
  sunXPos = 65;
  sunYPos = 52;
  
  seaTopLeftXPos = 0;
  seaTopLeftYPos = 259;

  sunWidth = 90;
  sunHeight = 82;
}

void draw() {
  background(#45BDFF);
  
  fill(#D0B000);
  ellipse(sunXPos, sunYPos, sunWidth, sunHeight);
  
  sunYPos += 0.5;
  //sunYPos++; // sunYPos += 1; OR sunYPos = sunYPos + 1;
 
 if (sunYPos > seaTopLeftYPos + (sunHeight/2)) {
     sunYPos = 0 - (sunHeight/2);
 }
 
  if (mousePressed) {
    fill(#EDAB1A);
    ellipse(sunXPos, sunYPos, sunWidth/3, sunHeight/3);
  }
  
  fill(255);
  triangle(mouseX, mouseY, rope_x2, rope_y2, rope_x3, rope_y3);
  
  fill(#D000D0); 
  beginShape();
  vertex(233, 88);
  vertex(250, 73);
  vertex(326, 54);
  vertex(372, 83);
  vertex(386, 137);
  vertex(380, 190);
  endShape(CLOSE);

  fill(#03008B);
 
  rect(seaTopLeftXPos, seaTopLeftYPos, width, height-seaTopLeftYPos);
  //rope_x2 = rope_x2 + 1;
  //rope_y2 = rope_y2 + 1;
}
