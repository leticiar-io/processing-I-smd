float cor1, cor2, cor3;

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  cor1 = random(1, 361);
  cor2 = (cor1 + 120) % 360;
  cor3 = (cor1 + 240) % 360;
}

void draw() {
  background(cor1, 30, 100);

  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      fill(cor3, 30, 100);
      ellipse(i*100+50, j*100+50, 100, 100);
      fill(cor2, 30, 100);
      ellipse(i*100+50, j*100+50, 50, 100);
      ellipse(i*100+50, j*100+50, 100, 50);
      fill(cor1, 30, 100);
      rect(i*100+35, j*100+35, 30, 30);
      fill(cor3, 30, 100);
      ellipse(i*100+50, j*100+50, 10, 10);
    }
  }
}
void keyPressed () {
  if (key == ENTER) {
    cor1 = random(1, 361);
    cor2 = (cor1 + 120) % 360;
    cor3 = (cor1 + 240) % 360;
  }
}
