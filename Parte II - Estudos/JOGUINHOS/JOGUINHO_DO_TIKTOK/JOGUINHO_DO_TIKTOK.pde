int [][] values = {{1, 5, 9, 13}, {2, 6, 10, 14}, {3, 7, 11, 15}, {4, 8, 12, 16}};

int n = 4;

int escolhaX = n;
int escolhaY = n;

int random1, random2;

int [][] D = new int[n][n];

int tamanho;

boolean ehBomba = false;
boolean gameOver = false;

void setup() {
  size(600, 600);
  tamanho = width / n;

  textSize(30);

  sorteio();
}

void draw() {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {

      fill(255);
      desenhaCenario(i, j, tamanho);
      fill(0);
      text(values[i][j], i*tamanho+30, j*tamanho+40);

      if (D[i][j]==1) { // Se a carta estiver virada, ela muda a estilização
        fill(255, 0, 0);
        rect(i*tamanho, j*tamanho, tamanho, tamanho);
        fill(255);

        text(values[i][j], i*tamanho+30, j*tamanho+30);
      }
      if (D[i][j] == 2) {
        fill(0, 255, 0);
        rect(i*tamanho, j*tamanho, tamanho, tamanho);
        fill(255);

        text(values[i][j], i*tamanho+30, j*tamanho+30);
      }
      /*if (gameOver == true) {
        fill(0);
        rect(0, 0, width, height);
        
        fill(255);
        text("GAME OVER :(", i*tamanho/2, j*tamanho/2);
      }*/
    }
  }
}

void desenhaCenario(int i, int j, int l) {
  rect(i*l, j*l, l, l);
}

void sorteio() {
  random1 = int(random(0, 3));
  random2 = int(random(0, 3));
}

void mousePressed() {
  escolhaX = mouseX/tamanho;
  escolhaY = mouseY/tamanho;

  //println(random1, random2);
  if (escolhaX == random1 && escolhaY == random2) {
    D[escolhaX][escolhaY] = 1;

    gameOver = true;
  } else {
    D[escolhaX][escolhaY] = 2;
  }
}
