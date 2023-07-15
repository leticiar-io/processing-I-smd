/*void setup() {
  size(600, 500);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {
  background(0,0,100);
  fill(0, 100, 100);
  ellipse(width/2, height/2, 250/600.00*width, 250/500.00*height);
}*/

color fillVal = color(126);

void draw() {
  fill(fillVal);
  rect(25, 25, 50, 50);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      fillVal = 255;
    } else if (keyCode == DOWN) {
      fillVal = 0;
    } 
  } else {
    fillVal = 126;
  }
}
