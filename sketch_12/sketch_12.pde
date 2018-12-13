/*
this sketch draws the surface of a planet and a moon overhead.
currently the moon rotates around a point in the middle of the sketch
based on the mouseX value.

change the sketch so that the moon rotates around the planet, then 
map the mx value to have the moon roughly follow the x position of
the mouse. 
*/

int planetX;
int planetY;

void setup() {
  size(600, 600);

  planetX = width/2;
  planetY = height*2;
}

void draw() {
  background(0);
  fill(255);
  ellipse(planetX, planetY, 1500, 1500);
  
  float mx = map(mouseX, 0, width/2, 0, width);

  float moonX = width/2 + cos(radians(mx/2)) * 400;
  float moonY = height + sin(radians(mx/2)) * 400;

  ellipse(moonX, moonY, 100, 100);
  fill(0);
  ellipse(moonX+20, moonY, 80, 80);
}
