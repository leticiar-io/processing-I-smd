int n = 10;
int tamanho;
void setup() {
  size(600, 600);

  tamanho = width/n;
  rectMode(CENTER);
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (i % 2 == 0 && j % 2 == 0) {
        fill (255);
        rect(i*tamanho+tamanho/2, j*tamanho+tamanho/2, tamanho, tamanho);

        fill(0);
      } else if (i % 2 != 0 && j % 2 == 0) {
        fill (0);
        rect(i*tamanho+tamanho/2, j*tamanho+tamanho/2, tamanho, tamanho);

        fill(255);
      } else if (i % 2 == 0 && j % 2 != 0) {
        fill (0);
        rect(i*tamanho+tamanho/2, j*tamanho+tamanho/2, tamanho, tamanho);

        fill(255);
      } else if (i % 2 != 0 && j % 2 != 0) {
        fill (255);
        rect(i*tamanho+tamanho/2, j*tamanho+tamanho/2, tamanho, tamanho);

        fill(0);
      }
      triangle(i*tamanho, j*tamanho+1, i*tamanho, j*tamanho+tamanho, i*tamanho+tamanho/2, j*tamanho+tamanho/2);
      triangle(i*tamanho+tamanho/2, j*tamanho+tamanho/2, i*tamanho+tamanho, j*tamanho, i*tamanho+tamanho, j*tamanho+tamanho);
    }
  }
}
