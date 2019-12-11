
/* 
 
 vcds2105f19
 @cerenkayalar
 week12
 
 counting using for loops 
 text: alignment, createFont(), loadFont()
 
 */


PFont opensans32pt, helvetica32pt, sfproDisplayLight32pt;
int n = 21;
int firstLine_y = 50;
int fontSize = 32;

void setup () {
  fullScreen();

  // uncomment to check the font list installed on your computer and create fonts accordingly 
  // String[] fontList = PFont.list();
  // printArray(fontList);

  opensans32pt = createFont("OpenSans", fontSize, true);
  helvetica32pt = createFont("Helvetica", fontSize, true);
  sfproDisplayLight32pt = createFont("SFProDisplay-Light", fontSize, true);
  //font = loadFont("Blacksword-32.vlw");
  textFont(opensans32pt);
}

void draw () {

  background(0);


  textFont(opensans32pt);
  textAlign(LEFT);
  for (int i=0; i < n; i++) {

    fill(76, 234, 250, 50+i*8);
    text("left | open sans 32pt | " + i*10, 20, firstLine_y + i*(fontSize+10));
    
  }


  textFont(helvetica32pt);
  textAlign(CENTER);
  for (int i=0; i < n; i++) {

    fill(76, 234, 250, 50+i*8);
    text("center | helvetica 32pt | " + i*10, width/2, firstLine_y + i*(fontSize+10));
    
  }

  textAlign(RIGHT);
  textFont(sfproDisplayLight32pt);
  
  for (int i=0; i < n; i++) {
    
    fill(76, 234, 250, 50+i*8);
    text("right | sfpro 32pt | " + (200 - i*10), width - 20, firstLine_y + i*(fontSize+10));
    
  }
}
