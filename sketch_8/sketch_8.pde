/*
 currently this sketch doesn't seem to respond to input.
 
 change the order of execution in the code so that the ellipse
 changes colors when a key is pressed, and returns to gray when
 the key is released. 
 
 once you've done that, add one more color. add another conditional
 to check if one special key is pressed (like 'a' or spacebar), and 
 if it is, make the ellipse use the new color, rather than 
 the other one.
 
 */


color c;
color defaultColor;
color highlighted;
color space;
//boolean purple;


void keyPressed() {
  if (key != CODED) {
    if (key== 'r') {
    c = highlighted;
  } else {
  if ( key != CODED) {
    if (key == ' ') {
      c = space;
    }
  }
  }
  }
}


void keyReleased() {
  if (key != CODED) {
    if (key == 'r');
    
    c = defaultColor;
  }
}
  


void setup() {
  size(600, 600);
  noStroke();
  defaultColor = color(150, 150, 150);
  highlighted = color(180, 140, 210);
  space = color(0);
  c = defaultColor;
}

void draw() {
  background(255);
  fill(c);
  ellipse(width/2, height/2, 200, 200);

  //if (keyPressed) {
  //  if (key != CODED) {
  //    if(key == 'r');
  //    c = highlighted;
  //  }
  //}


  //c = defaultColor;
}
