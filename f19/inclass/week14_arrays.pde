// vcds2105f19
// week 14 - arrays
// @cerenkayalar

// array size is static, 
// so the following line creates an array of 6 integers 
//int[] nums = {20, 42, 54, 63, 100, 120};

int [] xs, ys;

void setup() {
  fullScreen(); 
  xs = new int[200];
  ys = new int[200];
  
  noFill();
  for (int i = 0; i < xs.length; i++) {
    xs[i] = int(random(0,width));
    ys[i] = int(random(0,height));
  }
}

void draw() {
 
  background(255);
  for (int i = 0; i < xs.length; i++) {
    stroke(#068B40);
    line(xs[i], 0, xs[i], ys[i]);
    stroke(#FA7D08);
    circle(xs[i], ys[i], 20);
  }
  
}
