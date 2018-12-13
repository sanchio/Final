/*
convert the sketch below to use two 'while' loops, 
rather than two 'for' loops. it should look the same.
*/

void setup() {
  size(600, 600);
  //for (int i = 0; i < width; i++) {
  //  for (int j = 0; j < height; j++) {
  //    float r = map(i, 0, width, 0, 255);
  //    float g = map(j, 0, height, 0, 255);
  //    stroke(r, g, 175);
  //    point(i, j);
  
  int i = 0;
  while (i < width) {
    float r = map(i, 0, width, 0, 255);
    i++;
  
  int j = 0;
  
  while( j < height) {
    float g = map(j, 0, height, 0, 255);
    j++;
  
    stroke(r, g, 175);
    point(i, j);
  
  
    }
  }
  }