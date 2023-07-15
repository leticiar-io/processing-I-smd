int [][] values = {{ 1, 2, 3, 4 }, { 1, 2, 3, 4 }, { 5, 6, 7, 8 }, { 5, 6, 7, 8 }};

int [][] cartas = new int[4][4]; // inicializei a matriz cartas, dizendo o tamanho dos vetores e elementos
boolean [][] tahVisivel = new boolean[4][4];
int [] cartasEscolhidas = new int[2];
int [] escolhida = new int[4];
int tamanho;

void setup() {
  size(600,600);
  tamanho = width/ cartas.length;

  embaralha(values[0]); // embaralhando os elementos dentro do vetor 0
  embaralha(values[1]); // embaralhando os elementos dentro do vetor 1
  embaralha(values[2]); // embaralhando os elementos dentro do vetor 2
  embaralha(values[3]); // embaralhando os elementos dentro do vetor 3


  // Adicionando os valores nas cartas
  for (int i = 0; i < cartas.length; i++) {
    for (int j = 0; j < cartas[i].length; j++) {
      cartas[i][j] = values[i][j];

      // print(values[i][j], " ");
    }
    // println(" ");
  }
}

void draw() {
  for (int i = 0; i < cartas.length; i++) {
    for (int j = 0; j < cartas[i].length; j++) {
      fill(255);
      square(i * tamanho, j * tamanho, tamanho);
    }
  }

  for (int i = 0; i < tahVisivel.length; i++) {
    for (int j = 0; j < tahVisivel[i].length; j++) {
      if (tahVisivel[i][j]) fill(0);
      else fill(255);
      textAlign(CENTER);
      textSize(16);
      text(cartas[i][j], i * tamanho + tamanho / 2, j * tamanho + tamanho / 2);
    }
  }
}

void mousePressed() {
  if (cartasEscolhidas[0] == 0) {
    escolhida[0] = mouseX / tamanho;
    escolhida[1] = mouseY / tamanho;

    cartasEscolhidas[0] = values[escolhida[0]][escolhida[1]];
    tahVisivel[escolhida[0]][escolhida[1]] = true;
  } else {
    escolhida[2] = mouseX / tamanho;
    escolhida[3] = mouseY / tamanho;

    if (escolhida[0] != escolhida[2] || escolhida[1] != escolhida[3]) {
      cartasEscolhidas[1] = values[escolhida[2]][escolhida[3]];
      tahVisivel[escolhida[2]][escolhida[3]] = true;
      checandoAsCartas();
    }
  }
}

// Checando se os valores são os mesmos
void checandoAsCartas() {
  if (cartasEscolhidas[0] != cartasEscolhidas[1]) {
    tahVisivel[escolhida[0]][escolhida[1]] = false;
    tahVisivel[escolhida[2]][escolhida[3]] = false;
  }

  // Recolocando 0, caso não seja
  cartasEscolhidas[0] = 0;
  cartasEscolhidas[1] = 0;
  escolhida[0] = 0;
  escolhida[1] = 0;
  escolhida[2] = 0;
  escolhida[3] = 0;
}

// Embaralhando o Array
int [] embaralha (int [] cardValues) {
  int quant = cardValues.length; // indicando a quantidade dos vetores

  while (quant > 1) {
    int embaralha1 = (int) random(quant--), tmp = cardValues[quant];
    cardValues[quant] = cardValues[embaralha1];
    cardValues[embaralha1] = tmp;
  }

  return cardValues;
}
