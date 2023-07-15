int [][] randomNumbers = new int[4][4];
int[][] D = new int[4][4]; // guarda se a carta está virada ou não

int escolhaX=4;
int escolhaY=4;

int tamanho;

void setup() {
  size(600, 600);
  tamanho = width / 4;
  textSize(35);

  geraMatriz(randomNumbers);
  for (int i=0; i< randomNumbers.length; i++) {
    for (int j=0; j< randomNumbers.length; j++) {
      print(randomNumbers[i][j], " ");
    }
    println();
  }
}

void draw() {
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      desenho(i, j);
    }
  }
}

// Função que gera valores
int [][] geraMatriz(int [][] temp) {
  for (int i = 0; i < temp.length; i++) {
    for (int j = 0; j < temp[0].length; j++) {
      temp[i][j] = int(random(2)); // gerando 13 valores condinzentes com 13 cartas do baralho
    }
  }

  return temp;
}

// Função de desenho das cartas
void desenho(int x, int y) {
  fill(0);
  stroke(255);
  strokeWeight(2);
  rect(x * tamanho, y * tamanho, tamanho, tamanho);
  if (D[x][y]==1) {
    fill(255);
    rect(x*tamanho, y*tamanho, tamanho, tamanho);
    fill(0);

    text(randomNumbers[x][y], x*tamanho+30, y*tamanho+30);
  }
}

// E se o usuário clicar?
void mousePressed() {
  escolhaX = mouseX/tamanho;
  escolhaY = mouseY/tamanho;
  println(escolhaX, escolhaY);
  D[escolhaX][escolhaY] = 1;
}
