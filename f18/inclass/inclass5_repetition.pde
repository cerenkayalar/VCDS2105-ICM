/*
  YasarUni
  vcds2105f18-ICM / week9
  @ceren kayalar
*/

int xpos = 40;
int ypos = 20;

PFont font;

boolean saveCurrentFrame = false;

void setup() {
  //size(480, 240);
  fullScreen();
  smooth();
  noStroke();
  //frameRate(10);
  
  
  //ypos = height/2;
  
  // The font must be located in the sketch's 
  // "data" directory to load successfully
  font = loadFont("Arial-Black-24.vlw");
  textFont(font);
  textAlign(CENTER);
  
}

void draw() {
  background(100);

  fill(0);
  ellipse(xpos, ypos, 30, 30);
  ellipse(xpos+60, ypos, 30, 30);
  ellipse(xpos+60+60, ypos, 30, 30);
  ellipse(xpos+60+60+60, ypos, 30, 30);
  ellipse(xpos+60+60+60+60, ypos, 30, 30);
  
  for (int i= 0; i < 3; i++) { // draw 3 ellipses by giving a distance of 60px between them
    fill(random(255));
    ellipse(xpos + i*60, height/2, 30, 30);
  }
  
  for(int i = xpos; i < width; i+= 60) { // draw ellipses starting from x=40, spacing = 60
    fill(random(255), 255, 255);
    ellipse(i, mouseY, 30, 30);
    fill(#FC7FD7);
    text(i, i, mouseY);
  }
  
  fill(255);
  text("CENTER", width/2, height/2);
  
    
}

void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      ypos--;
    } else if (keyCode == DOWN) {
      ypos++;
    }
  } else {
    if (key == 's' || key == 'S') {
        saveFrame("currentFrame.png");
    }
  }
}
