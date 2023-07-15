int tam, x, y;

void setup() {
  size(600, 600);
  tam = width/10;
  ellipseMode(CORNER);


  noStroke();
}

void draw() {
  if (keyPressed) {
    x = int(random(0, 10));
    y = int(random(0, 10));
    if (x == y) {
      fill(0);
    } else {
      fill(255);
    }
    ellipse(x*tam, y*tam, tam, tam);
  }
}
