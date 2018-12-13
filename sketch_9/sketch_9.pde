/*
this sketch draws an ellipse that has a 25% chance of 
moving up, left, down or right.

use arrays to create a group of these 'random walkers'
instead of only displaying one. replace the position 
variables with arrays and loop to give them values, 
increment their positions, and draw their corresponding 
ellipses.
*/

float[] positions = new float[100];
int i;

float xPos;
float yPos;

void setup() {
  size(600, 600);
  for (int i = 0; i<100; i++) {
    positions[i] = map( i, 0, 100, 0, width);
}
  //xPos = width/2;
  //yPos = height/2;
  frameRate(15);
  background(125);
}

void draw() {
  //ellipse(xPos, yPos, 10, 10);
  ellipse(i * 4, i * 4, 10, 10);


  float r = random(4);

  if (int(r) == 0) {
    xPos += 5;
  } else if (int(r) == 1) {
    xPos -= 5;
  } else if (int(r) == 2) {
    yPos += 5;
  } else if (int(r) == 3) {
    yPos -= 5;
  }
} 
