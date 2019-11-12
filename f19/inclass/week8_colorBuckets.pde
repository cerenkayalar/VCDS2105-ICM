/* 
 
 vcds2105f19
 @cerenkayalar
 week8
 
 */
 
int rectWidth = 30;
int rectHeight = 50;
int terracottaBucketX, terracottaBucketY;
int cyanBucketX, cyanBucketY;
color cyanBucket = #4DE3F0;
color terracottaBucket = color(211, 88, 38); //#D35826
color selectedBucket = color(255, 0); // transparent white, no draw trick :)

boolean ellipsePortal = false;
int ellipseRadius = rectHeight/2;
int ellipsePortalX, ellipsePortalY;

int linePortalX, linePortalY;
int lineLength;

void setup() {

  size(300, 800);
  smooth();

  // initialize the terracottaBucketX and terracottaBucketY variables inside setup because we want it to be placed relative to the canvas size
  // the initial values related to width and height can be given ONLY after the size() of the canvas is set!
  terracottaBucketX = width - 50; 
  terracottaBucketY = height/2 - rectHeight/2;

  cyanBucketX = terracottaBucketX - rectWidth*2;
  cyanBucketY = terracottaBucketY;

  ellipsePortalX = width/4;
  ellipsePortalY = height/2;

  linePortalX = ellipsePortalX - ellipseRadius*2;
  linePortalY = ellipsePortalY;

  lineLength = rectHeight;

  background(100);
}

void draw() {


  // 1- select by mouse over shape
  if (dist(mouseX, mouseY, ellipsePortalX, ellipsePortalY) < ellipseRadius)
    ellipsePortal = true;
  else if (dist(mouseX, mouseY, linePortalX, linePortalY) < ellipseRadius)
    ellipsePortal = false;


  stroke(selectedBucket, 50);
  noFill();
  // draw the brush
  if (ellipsePortal)
  {
    strokeWeight(4);
    ellipse(mouseX, mouseY, ellipseRadius*2, ellipseRadius*2);
  } else {
    strokeWeight(8);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }

  strokeWeight(1);
  stroke(#9EA0A0);
  line(0, height/2, width, height/2); // vertical divider 

  // draw interface widgets
  noFill();
  strokeWeight(4);
  stroke(#E3E3E3);
  ellipse(ellipsePortalX, ellipsePortalY, ellipseRadius*2, ellipseRadius*2);

  line(linePortalX, linePortalY - lineLength/2, linePortalX, linePortalY + lineLength/2);

  noStroke();
  fill(cyanBucket);
  rect(cyanBucketX, cyanBucketY, rectWidth, rectHeight);

  fill(terracottaBucket);
  rect(terracottaBucketX, terracottaBucketY, rectWidth, rectHeight);
}

void mousePressed() {

  // 2 - select by clicking color bucket
  if (mouseX > terracottaBucketX && mouseX < terracottaBucketX + rectWidth && mouseY > terracottaBucketY && mouseY < terracottaBucketY + rectHeight)
    selectedBucket = terracottaBucket;

  if (mouseX > cyanBucketX && mouseX < cyanBucketX + rectWidth && mouseY > cyanBucketY && mouseY < cyanBucketY + rectHeight)
    selectedBucket = cyanBucket;

  if (mouseButton == RIGHT) // transparent white, no draw trick :)
    selectedBucket = color(255, 0);
}
