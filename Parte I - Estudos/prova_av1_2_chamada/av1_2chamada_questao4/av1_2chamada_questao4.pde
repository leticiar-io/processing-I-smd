int cor1, cor2, cor3, cor4;

void setup() {
  size(300, 395);
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
  ellipse(400/600.00*width, 500/790.00*height, 380/600.00*width, 380/790.00*height);

  fill(cor2, 50, 100);
  triangle(0, 0, 425/600.00*width, 500/790.00*height, 800/600.00*width, 0/790.00*height);

  fill(cor3, 50, 100);
  triangle(160/600.00*width, 800/790.00*height, 425/600.00*width, 500/790.00*height, 800/600.00*width, 900/790.00*height);

  fill(cor4, 50, 100);
  triangle(800/600.00*width, 0, 425/600.00*width, 500/790.00*height, 800/600.00*width, 900/790.00*height);

  fill(0, 0, 100);
  rect(300/600.00*width, 50/790.00*height, 150/600.00*width, 100/790.00*height, 10);
}

void mousePressed () {
  if (mouseX >= 300/600.00*width && mouseY >= 50/790.00*height && mouseY <= 150/790.00* height && mouseX <= 450/600.00*width) {
    cor1 = int(random(0, 360));
    cor2 = ((cor1 + 30) % 360);
    cor3 = ((cor2 + 30) % 360);
    cor4 = ((cor3 + 30) % 360);
  }
}
