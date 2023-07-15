int n = 5;
int tamanho;
void setup() {
  size(600, 600);
  background(0);

  tamanho = width/n;
  ellipseMode(CENTER);
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      for (int t = 5; t >= 0; t--) {
        strokeWeight(8);
        if(t % 2 == 0) stroke(255); else stroke(0);
        ellipse(i*tamanho+tamanho/2, j*tamanho+tamanho/2, t*tamanho/5, t*tamanho/5);
      }
    }
  }
}
