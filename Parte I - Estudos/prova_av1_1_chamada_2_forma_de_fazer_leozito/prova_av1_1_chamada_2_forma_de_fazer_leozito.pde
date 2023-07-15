int hue1, hue2, hue3;
float kr = 100;
void setup() {
  size(600, 600);
  ellipseMode(CORNER);
  noStroke();

  colorMode(HSB, 360, 100, 100);
  hue1 = (int(random(240, 361)));
  hue2 = (hue1 - 120);
  hue3 = (hue1 - 240);
}

void draw() {
  background(hue1, 50, 100);

  fill(hue2, 50, 100);
  ellipse(0, 0, width, height);

  fill(hue3, 50, 100);
  quad(0, kr*3/(kr*6)*height, kr/(kr*6)*width, kr*4/(kr*6)*height, kr*3/(kr*6)*width, kr*2/(kr*6)*height, kr*3/(kr*6)*width, 0);

  quad(kr*6/(kr*6)*width, kr*3/(kr*6)*height, kr*5/(kr*6)*width, kr*4/(kr*6)*height, kr*3/(kr*6)*width, kr*2/(kr*6)*height, kr*3/(kr*6)*width, 0);

  quad(kr*2/(kr*6)*width, kr*5/(kr*6)*height, kr*3/(kr*6)*width, kr*4/(kr*6)*height, kr*4/(kr*6)*width, kr*5/(kr*6)*height, kr*3/(kr*6)*width, height);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      colorMode(HSB, 360, 100, 100);
      hue1 = (int(random(240, 361)));
      hue2 = (hue1 - 120);
      hue3 = (hue1 - 240);
    } else if (keyCode == RIGHT) {
      colorMode(HSB, 360, 100, 100);
      hue1 = (int(random(240, 361)));
      hue2 = (hue1 - 120);
      hue3 = (hue1 - 240);
    }
  }
}
