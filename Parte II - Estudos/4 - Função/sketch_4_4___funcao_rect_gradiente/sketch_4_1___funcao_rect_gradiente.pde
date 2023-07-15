void setup() {
  size(500, 500);
  noStroke();
  background(255);
  rectMode(CENTER); // isso aqui é importante para deixar todos no mesmo centro

  for (int j=0; j < 10; j++) {
    for (int i=0; i < 10; i++) {
      desenho(i*50+25, j*50+25, 50);
    }
  }
}

void desenho(int x, int y, int l) {
  for (int t = 10; t > 0; t--) {
    fill(t*25); // deixa os tons cada vez mais gradiente
    rect(x, y, t*5, t*5); // os centros são os mesmos, só muda o tamanho!!
  }
}
