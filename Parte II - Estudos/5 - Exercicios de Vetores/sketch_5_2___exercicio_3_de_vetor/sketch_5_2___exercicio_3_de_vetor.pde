int [] V = new int[3];
int [] V2 = new int[3];

void setup() {
  size(300, 150);

  // Atribuição de valores
  println("CORES ORIGINAIS => ");
  for (int i = 0; i <= V.length -1; i++) {
    V[i] = int(random(0, 249));
    print(V[i], " ");
  }

  fill(V[0], V[1], V[2]);
  ellipse(50, 50, 100, 100);

  println("");
  println(" -------------------------------- ");

  V2 = geraArray(V);

  println("CORES INVERSAS => ");
  for (int i = 0; i <= V2.length - 1; i++) {
    print(V2[i], " ");
  }

  fill(V2[0], V2[1], V2[2]);
  ellipse(150, 50, 100, 100);
}


int[] geraArray(int [] n) { // precisa do int[][], pois a questão pede para a função RETORNAR o valor, logo não poderia ser usado void

  for (int i =0; i<= n.length - 1; i++) {
    n[i]= int((255 - n[i]));
  }

  return n;
}
