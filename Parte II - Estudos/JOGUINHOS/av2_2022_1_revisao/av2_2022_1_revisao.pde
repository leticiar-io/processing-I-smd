int n=5;
int l;
int escolhaX=n;
int escolhaY=n;
int[][] M;
int[][] D = new int[n][n];
int soma = 0;

void setup() {
  size(600, 600);
  l=width/n;
  textSize(30);

  M = geraMatriz(5, 13);
  for (int i=0; i<M.length; i++) {
    for (int j=0; j<M.length; j++) {
      print(M[i][j], " ");
    }
    println();
  }
}

void draw() {
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      stroke(255);
      fill(0);
      rect(i*l, j*l, l, l);
      if (D[i][j]==1) {
        fill(255);
        rect(i*l, j*l, l, l);
        fill(0);
        text(M[i][j], i*l+30, j*l+30);
      }
    }
  }
}

void mousePressed() {
  escolhaX = mouseX/l;
  escolhaY = mouseY/l;
  println(escolhaX, escolhaY);
  D[escolhaX][escolhaY] = 1;

  soma = soma + M[escolhaX][escolhaY];

  println("soma =>", soma);
  if (soma > 25) {
    println("Maior que 25, você perdeu!");
  }
}

// Para gerar matriz:
int[][] geraMatriz(int n, int v) { // precisa do int[][], pois a questão pede para a função RETORNAR o valor, logo não poderia ser usado void
  int [][] temp = new int [n][n];

  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      temp[i][j]=int(random(v + 1));
    }
  }

  return temp;
}
