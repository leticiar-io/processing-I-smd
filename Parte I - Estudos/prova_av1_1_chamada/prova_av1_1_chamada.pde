int hue1, hue2, hue3;

void setup() {
  size(600, 600);
  ellipseMode(CORNER);
  noStroke();

  colorMode(HSB, 360, 100, 100);
  hue1 = (int(random(0, 360)));
  hue2 = ((hue1 + 120) % 360);
  hue3 = ((hue2 + 120) % 360);
}

void draw() {
  background(hue1, 50, 100);

  fill(hue2, 50, 100);
  ellipse(0, 0, width, height);

  fill(hue3, 50, 100);
  quad(0, 300/600.00*height, 100/600.00*width, 400/600.00*height, 300/600.00*width, 200/600.00*height, 300/600.00*width, 0);

  quad(600/600.00*width, 300/600.00*height, 500/600.00*width, 400/600.00*height, 300/600.00*width, 200/600.00*height, 300/600.00*width, 0);

  quad(200/600.00*width, 500/600.00*height, 300/600.00*width, 400/600.00*height, 400/600.00*width, 500/600.00*height, 300/600.00*width, 600/600.00*height);
}

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
