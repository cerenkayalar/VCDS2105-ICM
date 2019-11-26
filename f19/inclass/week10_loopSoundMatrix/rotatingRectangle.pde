void rotatingRect() {

  pushMatrix();
  //scale(map(mouseX, 0, width, 0, 1));
  //translate(100, 100);

  translate(width/2, height/2);
  rotate(radians(r));
  r += 3;
  //fill(#AAA1A5);  // 1
  fill(170, 161, 165, 50);
  rect(30, 30, 100, 100);
  fill(#F22772); 
  ellipse(80, 80, 100, 100);
  fill(#6C0A3B);
  rect(50, 50, 60, 60);
  popMatrix();
}
