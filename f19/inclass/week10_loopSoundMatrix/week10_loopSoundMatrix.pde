
/* 
 
 vcds2105f19
 @cerenkayalar
 week10 - inclass edit on @cansutekin hw7
 
 To export your sketch as an application for Win/MacOS/Linux: File/Export Application
 
 Topics covered:
 - Libraries
 - Translate/Rotate/Scale
 - Loops (for)
 - Multiple pde files, sketch folder organization, packages 
 - Very brief intro to functions (OOP)
 - Exporting applications from processing (You can even make your sketch an Android app: top right corner/
 change the mode from Java to Android - if you didn't do it before, you have to install Android mode first)
 
*/

//
//vcds 2109f19
//@cansutekin
//h7
//

import processing.sound.*;

SoundFile file;
float C;
float D;
float B;
int r =0;

void setup() {
  //size(320, 400);
  fullScreen();
  background(#F05AA5);
  noStroke();
  file = new SoundFile(this, "sounds/The Music Scene.wav");

  file.loop();
  file.jump(10);

  B = file.duration();

  C = width;
  D = 0;
}

void mousePressed() {
  if (file.isPlaying())  
    file.pause();
  else
    file.loop();
}

void draw() {
  //background(#F05AA5);
  //println(B);
  // println(frameRate);
  surface.setTitle(mouseX + ", " + mouseY);
  
  C = C - 3;
  D = D + 3;
  if (C < 0) {
    C = width;
  }

  if (D > width) {
    D = 0;
  }


  fill(0, 10);
  for (int i = 0; i < 4; i++)
    rect(C, 10 + 125*i, 30, 15);

  for (int i = 4; i < 8; i++) 
    rect(D, 10 + 125*i, 30, 15);

  /*rect(C, 135, 30, 15);
   rect(C, 135+125, 30, 15);
   rect(C, 135+125+125, 30, 15);
   rect(C, 135+125+125+125, 30, 15);
   rect(C, 135+125+125+125+125, 30, 15);
   rect(C, 135+125+125+125+125+125, 30, 15);
   rect(C, 135+125+125+125+125+125+125, 30, 15);*/
  // rect(C, 135+125+125+125+125+125+125+125, 30, 15);


  fill(#AAA1A5);  // 1
  rect(30, 30, 100, 100);
  fill(#F22772); 
  ellipse(80, 80, 100, 100);
  fill(#6C0A3B);
  rect(50, 50, 60, 60);

  rotatingRect();

  pushMatrix();
  fill(#AAA1A5); // 2
  rect(165, 32, 100, 100); 
  fill(#F22772);
  ellipse(215, 82, 100, 100);
  fill(#6C0A3B);
  rect(185, 50, 60, 60);
  popMatrix();

  fill(#AAA1A5); //3
  rect(30, 160, 100, 100); 
  fill(#F22772);
  ellipse(80, 210, 100, 100);
  fill(#6C0A3B);
  rect(50, 180, 60, 60);

  fill(#AAA1A5); // 
  rect(170, 160, 100, 100); 
  fill(#F22772);
  ellipse(220, 210, 100, 100);
  fill(#6C0A3B);
  rect(190, 180, 60, 60);

  fill(#AAA1A5); 
  rect(30, 295, 100, 100); 
  fill(#F22772);
  ellipse(80, 345, 100, 100);
  fill(#6C0A3B);
  rect(50, 315, 60, 60);

  fill(#AAA1A5); 
  rect(170, 295, 100, 100); 
  fill(#F22772);
  ellipse(220, 345, 100, 100);
  fill(#6C0A3B);
  rect(190, 315, 60, 60);

  translate(width/2, height/2);
  rotatingRect();

  if (mousePressed) {
    if (mouseButton == LEFT) {
      fill(0); 
      rect(30, 30, 100, 100);
      rect(165, 32, 100, 100);
      rect(30, 160, 100, 100); 
      rect(170, 160, 100, 100); 
      rect(30, 295, 100, 100); 
      rect(170, 295, 100, 100);
    } else if (mouseButton == RIGHT) {
      fill(255);
      ellipse(80, 80, 100, 100);
      ellipse(215, 82, 100, 100);
      ellipse(80, 210, 100, 100);
      ellipse(220, 210, 100, 100);
      ellipse(80, 345, 100, 100);
      ellipse(220, 345, 100, 100);
    }
  }
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      fill(#EFCFFC);
      rect(50, 50, 60, 60);
      rect(185, 50, 60, 60);
      rect(50, 180, 60, 60);
      rect(190, 180, 60, 60);
      rect(50, 315, 60, 60);
      rect(190, 315, 60, 60);
    }
  }
}
