int tamanho;
int n = 5;

void setup () {
  size(600, 600);
  tamanho = width/n;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      desenho(i, j, tamanho);
    }
  }
}

void desenho (int x, int y, float l) { // l é o tamanho
  ellipse(x*l+l/2, y*l+l/2, l, l);
}
