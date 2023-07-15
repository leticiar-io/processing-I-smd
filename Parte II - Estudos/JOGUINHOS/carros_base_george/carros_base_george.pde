int n = 10;
int[] Y = new int[n];
int l;
int escolha =2;
void setup() {
  size(600, 800);
  l = width/n;
  fill(0);
  background(255);
  for (int i =0; i<n; i++) {
    noFill();
    rect(i*l, 0, l, height);
    fill(0);
    carro(i*l+l/3, Y[i], 20);
  }
}
boolean parou = true;
void draw() {
  if (parou==false) {
    background(255);
    for (int i =0; i<n; i++) {
      noFill();
      rect(i*l, 0, l, height);
      fill(0);
      Y[i]=Y[i]+int(random(2, 6));
      if (Y[i]>760) {
        if (escolha == i) println("Ganhou!", escolha, i);
        else println("Perdeu!", escolha, i);
        parou = true;
      }
      //+l/3 é para alinhar o carro na faixa
      carro(i*l+l/3, Y[i], 20);
    }
  }
}
void carro(int x, int y, int t) {
  rect(x, y, t, 2*t);
}
void mousePressed() {
  parou = false;
  escolha = mouseX/l;
}
