int cor1, cor2, cor3, cor4;

void setup() {
  size(600, 790);
  noStroke();

  colorMode(HSB, 360, 100, 100);

  cor1 = int(random(0, 360));
  cor2 = ((cor1 + 30) % 360);
  cor3 = ((cor2 + 30) % 360);
  cor4 = ((cor3 + 30) % 360);
}

void draw() {
  background(cor1, 50, 100);

  fill(0, 0, 100);
  ellipse(400, 500, 380, 380);

  fill(cor2, 50, 100);
  triangle(0, 0, 425, 500, 800, 0);

  fill(cor3, 50, 100);
  triangle(160, 800, 425, 500, 800, 900);

  fill(cor4, 50, 100);
  triangle(800, 0, 425, 500, 800, 900);
}
