int tam, x, y;
int c0, c1, c2;

void setup() {
  size(600, 600);
  tam = width/10;
  ellipseMode(CORNER);
  colorMode(HSB, 360, 100, 100);

  noStroke();

  c0 = int(random(0, 360));
  c1 = ((c0 + 120) % 360);
  c2 = ((c1 + 120) % 360);
}

void draw() {
  if (keyPressed) {
    x = int(random(0, 10));
    y = int(random(0, 10));


    if (x == y) {
      fill(c2, 50, 100);
    } else {
      fill(c1, 50, 100);
    }
    ellipse(x*tam, y*tam, tam, tam);
  }
}
