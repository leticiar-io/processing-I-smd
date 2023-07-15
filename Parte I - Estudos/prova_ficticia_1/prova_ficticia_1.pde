int hue1, hue2, hue3;

void setup() {
  size(400, 190);
  noStroke();

  colorMode(HSB, 360, 100, 100);

  hue1 = int(random(0, 360));
  hue2 = ((hue1 + 120) % 360);
  hue3 = ((hue2 + 120) % 360);
}

void draw() {
  background(hue2, 50, 100);
  //background(hue1, 50, 100);


  fill(hue1, 50, 100);
  //fill(hue2, 50, 100);

  triangle(0, 0, 200/800.00*width, 0, 0, 190/380.00*height);
  triangle(width, 0, 600/800.00*width, 0, width, 190/380.00*height);

  triangle(0, 190/380.00*height, 0, height, 200/800.00*width, height);
  triangle(width, 190/380.00*height, 600/800.00*width, height, width, height);

  fill(hue3, 50, 100);
  triangle(190/800.00*width, 190/380.00*height, 370/800.00*width, 0, 370/800.00*width, height);

  triangle(610/800.00*width, 190/380.00*height, 440/800.00*width, 0, 440/800.00*width, height);
}

/*void keyPressed() {
 if (key == CODED) {
 if (keyCode == UP) {
 hue1 = (int(random(0, 360)));
 hue2 = ((hue1 + 180) % 360);
 hue3 = hue2;
 } else if (keyCode == DOWN) {
 hue1 = int(random(0, 360));
 hue2 = ((hue1 + 120) % 360);
 hue3 = ((hue2 + 120) % 360);
 }
 }
 }*/

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      colorMode(HSB, 360, 100, 100);
      hue1 = (int(random(0, 360)));
      hue2 = ((hue1 + 180) % 360);
      hue3 = ((hue2 + 180) % 360);
    } else if (keyCode == RIGHT) {
      colorMode(HSB, 360, 100, 100);
      hue1 = (int(random(0, 360)));
      hue2 = ((hue1 + 120) % 360);
      hue3 = ((hue2 + 120) % 360);
    }
  }
}
