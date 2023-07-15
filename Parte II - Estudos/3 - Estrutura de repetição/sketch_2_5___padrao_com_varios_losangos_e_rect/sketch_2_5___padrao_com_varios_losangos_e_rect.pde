int n = 20;
int tamanho, tamanhoLosango;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  
  tamanho = width / n;
  tamanhoLosango = tamanho / 2;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      fill(0);
      rect(i*tamanho+tamanho/2, j*tamanho+tamanho/2, tamanho, tamanho);

      fill (255);
      quad(i*tamanho, j*tamanho+tamanhoLosango, i*tamanho+tamanhoLosango, j*tamanho, i*tamanho+tamanho, j*tamanho+tamanhoLosango, i*tamanho+tamanhoLosango, j*tamanho+tamanho);
      
      fill(0);
      rect(i*tamanho+tamanhoLosango, j *tamanho+tamanhoLosango, tamanhoLosango, tamanhoLosango);
    }
  }
}
