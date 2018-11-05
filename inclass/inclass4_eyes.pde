/*
  YasarUni
  vcds2105f18-ICM / week7
  @ceren kayalar
*/

int eyeBallRadius; // declaring a variable
int eyeAngryHeight;
int eyeBallPosX;
int eyeBallPosY;

void setup() {
  size(400, 400);
  noStroke();
  
  eyeBallRadius = 50; // assigning a value to the variable
  eyeAngryHeight = 10;
  eyeBallPosX = 0;
  eyeBallPosY = height/2;
}

void draw() {
  background(122);
  
  // right eye
  if (dist(mouseX, mouseY, eyeBallPosX, eyeBallPosY) < eyeBallRadius) {
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(eyeBallPosX, eyeBallPosY, eyeBallRadius*2, eyeAngryHeight, 10);
  }
  else {
    fill(255);
    ellipse(eyeBallPosX, eyeBallPosY, eyeBallRadius*2, eyeBallRadius*2); // eye ball
    fill(0);
    ellipse(eyeBallPosX , eyeBallPosY, eyeBallRadius*2/10, eyeBallRadius*2/10); // pupil
  }
  
  // left eye
  if (dist(mouseX, mouseY, eyeBallPosX-eyeBallRadius*3, eyeBallPosY) < eyeBallRadius) {
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(eyeBallPosX-eyeBallRadius*3, eyeBallPosY, eyeBallRadius*2, eyeAngryHeight, 10);
  }
  else {
    fill(255);
    ellipse(eyeBallPosX-eyeBallRadius*3, eyeBallPosY, eyeBallRadius*2, eyeBallRadius*2); // eye ball
    fill(0);
    ellipse(eyeBallPosX-eyeBallRadius*3 , eyeBallPosY, eyeBallRadius*2/10, eyeBallRadius*2/10); // pupil
  }
  
  
  eyeBallPosX += 1; 
  
  if (eyeBallPosX - eyeBallRadius> width) 
    eyeBallPosX = 0;
    
  // eyeBallPos = eyeBallPos + 1;
  // eyeBallPos += 1;
  
}
