// vcds2105f19
// week 14 - OOP: object oriented programming
// @cerenkayalar

Bubble[] bubbles;
Bubble littleBubble;
boolean isBubbly = true;

void setup() {
  size(200, 600);
  noFill();
  
  littleBubble = new Bubble(width/2, 0, 0.8, 10, color(6, 139, 64));

  bubbles = new Bubble[20];

  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(0, width), height, random(0.5, 3.5), random(20, 50), color(59, 227, 255));
  }
}


void draw() {

  background(255); 
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].display(isBubbly);
    bubbles[i].ascend();
    bubbles[i].top();
  }


  if (keyCode == LEFT)
    littleBubble.goLeft();
  else if (keyCode == RIGHT)
    littleBubble.goRight();



  littleBubble.display(!isBubbly);
  littleBubble.descend();
}
