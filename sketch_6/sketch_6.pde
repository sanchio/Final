/*
currently this sketch draws white points all over the canvas.

change the values being given to x and y and add a conditional so that
the white points are only drawn inside the black circle.
you will have to use the dist() function.
*/

void setup() {
  size(600, 600);
  background(50);
  fill(0);
  ellipse(width/2, height/2, 300, 300);
}

void draw() {
  float x = random(0, width);
  float y = random(0, height);
  stroke(255);
  //point(x, y);
  float d1 = dist(0, height/2, width/2 + 150 , height/2 + 150);
  float d2 = dist(0, width/2, height/2 + 150, width/2 + 150);
  point(map(x, 0, width, width/2, d1), map(y, 0, height, height/2, d2)); 
}
