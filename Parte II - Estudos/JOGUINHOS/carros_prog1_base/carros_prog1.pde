void setup() {
  size(600, 600);
}
int escolha;
int n = 10;
int [] Y = new int[n];
int l= width/2;
boolean parou = false;


void draw() {
  if (parou == false) {
    estrada(width, height);
    //background(255);

    for (int i = 0; i< Y.length; i++) {
      carro(i*l+60, Y[i], 20);
      Y[i] = Y[i] + int(random(2, 6));

      if (Y[i] > height) {
        fill(255, 50, 100, 50);
        rect((i+1)*l, 0, 50, height);
        print("Você escolheu o carro ", escolha, " ");
        print("O carro vencedor foi ", i+1, " ");
        
        if ((i+1) == escolha) {
          print(" Você ganhou");
        } else {
          print(" Você perdeu");
        }
        parou = true;
      }
    }
  }
}

void carro(int x, int y, int t) {
  fill(#DCA4F2);
  rect(x, y, t, 2*t);

  fill(0);
  // rodinhas esquerda
  rect(x-5, y+5, 5, 10);
  rect(x-5, y+25, 5, 10);
  // rodinhas direita
  rect(x+20, y+25, 5, 10);
  rect(x+20, y+5, 5, 10);
  // vidro do carro
  fill(120);
  rect(x+2, y+20, 15, 10);
}

void estrada(int w, int h) {
  background(108, 214, 119, 50);

  fill(50);
  rect(45, 0, 510, h);

  fill(150);
  for (int y = 0; y <= 300; y++) {
    for (int i = 0; i <= 200; i++) {
      rect(80*i+50, 90*y+y, 10, 30);
    }
  }
}

void mousePressed() {
  escolha = mouseX/l;
  println(escolha);
  
  fill(0);
  rect(escolha*l, 0, 50, height);
}
