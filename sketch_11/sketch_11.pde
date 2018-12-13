/*
this sketch draws a grid to the canvas 
using two 2D arrays. 

create a third 2D array that will be used 
to store color values for the grid. in 
the setup, use a conditional statement 
to set color values to red or white, according 
to the pattern in the example image.
*/


int rows = 10;
int columns = 10;
float w, h;
float[][] posX = new float[rows][columns];
float[][] posY = new float[rows][columns];
float[][] red =  new float[rows][columns];

void setup() {
  size(600, 600);
  w = width/rows;
  h = height/columns;
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      posX[r][c] = c * w;
      posY[r][c] = r * h;
    }
  }
  
  red = new float[rows][columns];
  for (int i = 0; i < red.length; i++) {
    for (int j = 0; j < red[0].length; j++) {
      red[i][j] = int(map(i, 0, red.length, 0, 255));
    }
  }
  
  for (int i = 0; i < red.length; i++) {
    for (int j = 0; j < red[0].length; j++) {
      fill(red[i][j], 0, 0);
    }
  }
  
  
  
  
  
}

void draw() {
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      rect(posX[r][c], posY[r][c], w, h);
    }
  }
  
  for (int i = 0; i < red.length; i++) {
    for (int j = 0; j < red[0].length; j++) {
      if (red[i][j] < width/2 && red[i][j] > height/2) {
        red[i][j] = 255;
  
      }
  
    }
  
}
}
