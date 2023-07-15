int tamanhoDaBola, positionX, positionY;

void setup() {
  size(600, 600);
  noStroke();

  ellipseMode(CORNER);
  tamanhoDaBola = width/10;
}

void draw() {
  if (keyPressed) {
    positionX = int(random(0, 10)); // deve ficar no draw para poder rodar outras posicoes
    positionY = int(random(0, 10));
    if (positionX == positionY) {
      fill(90);
    } else {
      fill(255);
    }
    ellipse(positionX*tamanhoDaBola, positionY*tamanhoDaBola, tamanhoDaBola, tamanhoDaBola);
  }
}
