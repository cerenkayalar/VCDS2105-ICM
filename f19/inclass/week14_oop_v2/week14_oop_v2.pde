// vcds2105f19
// week 14 - OOP: object oriented programming
// v2: Bubble game with sound effects
// @cerenkayalar


import processing.sound.*;
SoundFile popEffect, gameoverSound;

Bubble[] bubbles;
Bubble littleBubble;

boolean isBubbly = true;
int lifeCount = 5;
PImage heartImg, gameoverImg;
int posy = 0;

void setup() {
  size(200, 600);
  //fullScreen();
  noFill();

  littleBubble = new Bubble(width/2, 0, 0.8, 10, color(6, 139, 64));

  bubbles = new Bubble[20];

  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(0, width), height, random(0.5, 1.5), random(20, 40), color(59, 227, 255));
  }

  heartImg = loadImage("heart8bit.png");
  heartImg.resize(heartImg.width/20, heartImg.height/20);

  // http://soundbible.com/1982-Gum-Bubble-Pop.html
  popEffect = new SoundFile(this, "pop.wav"); 
  // http://soundbible.com/1866-Jack-In-The-Box-Fast.html
  gameoverSound = new SoundFile(this, "gameover.wav");
  gameoverImg = loadImage("gameover.png");
}


void draw() {
  
  if (lifeCount > 0) {
    background(255);
    for (int i = 0; i < lifeCount; i++)
      image(heartImg, i*30, 10);


    for (int i = 0; i < bubbles.length; i++) {
      bubbles[i].display(isBubbly);
      bubbles[i].ascend();
      bubbles[i].top();

      if (bubbles[i].isColliding(littleBubble)) {
        bubbles[i].y = -100;
        bubbles[i].top();
        lifeCount--;
      }
    }

    if (keyCode == LEFT)
      littleBubble.goLeft();
    else if (keyCode == RIGHT)
      littleBubble.goRight();

    littleBubble.display(!isBubbly);
    littleBubble.descend();
  } else {
    // game over screen
    
    for(int posx = 0; posx < width; posx += 10) {
       circle(posx, posy, 20);
    }
    
    posy += 2;
    
    image(gameoverImg, width/2 - gameoverImg.width/2, height/2 - gameoverImg.height/2);
    
    if (!gameoverSound.isPlaying())
      gameoverSound.play();
      
  }
}
