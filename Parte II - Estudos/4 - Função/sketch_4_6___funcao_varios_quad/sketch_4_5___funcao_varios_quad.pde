int n = 10;
int tamanho, tamanhoLosango;

void setup() {
  size(500, 500);
  noStroke();
  background(255);
  rectMode(CENTER);

  tamanho = width / n;
  tamanhoLosango = tamanho / 2;

  for (int j=0; j < n; j++) {
    for (int i=0; i < n; i++) {
      desenho(i, j, tamanho, tamanhoLosango);
    }
  }
}

void desenho(int x, int y, int l, int l2) {
  fill (0);
  quad(x*l, y*l+l2, x*l+l2, y*l, x*l+l, y*l+l2, x*l+l2, y*l+l);
}
