void setup() {
  size(500, 500);
  noStroke();
  background(255);
  rectMode(CENTER);

  for (int j=0; j < 10; j++) {
    for (int i=0; i < 10; i++) {
      desenho(i*50+25, j*50+25, 50);
    }
  }
}

void desenho(int x, int y, int l) {
  fill(0);
  ellipse(x, y, l, l);
  fill(255);
  rect(x,y, l/2, l/2);
}
