// vcds2105f19
// week 14 - OOP: object oriented programming
// @cerenkayalar
// based on @shiffman's example 
// https://www.youtube.com/watch?v=YcbcfkLzgvs&list=PLRqwX-V7Uu6bb7z2IJaTlzwzIg_5yvL4i

class Bubble {

  // data / fields
  float x, y;
  float speed;
  float diameter;
  color c;

  Bubble () {
    // default constructor
    y = height;
    x = width/2;

    speed = 1.5; 
    diameter = 50;  
    c = color(59, 227, 255);
  }

  Bubble (float tempX, float tempY, float tempSpeed, float d, color tempColor) {
    // constructor
    y = tempY;
    x = tempX;

    speed = tempSpeed;

    diameter = d;
    c = tempColor;
  }

  // methods / functionality
  void ascend() {
    y -= speed;
  }

  void descend() {
    y += speed;
  }

  void display(boolean bubbly) {
    stroke(c);
    if (bubbly)
      circle(x+random(-2, 2), y, diameter);
    else
      circle(x, y, diameter);
  }

  void goLeft() {
    x -= speed;
  }

  void goRight() {
    x += speed;
  }

  void top() {
    if ( y < 0 ) {
      y = height;
      c = color(random(0, 255), random(0, 255), 255);
    }
  }
}// end of class Bubble
