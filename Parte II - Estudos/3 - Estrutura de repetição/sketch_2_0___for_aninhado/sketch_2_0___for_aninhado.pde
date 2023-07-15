int n = 10;
int tamanho;

void setup() {
  size(600, 600);
  tamanho = width/n;
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  for (int x = 0; x < n; x++) {
    for (int y = 0; y < n; y++) {
      rect(x*tamanho+tamanho/2, y*tamanho+tamanho/2, tamanho, tamanho);
      ellipse(x*tamanho+tamanho/2, y*tamanho+tamanho/2, tamanho, tamanho);
    }
  }
}
