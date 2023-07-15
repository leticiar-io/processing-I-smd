// Criando o Joguinho de achar o elemento diferente

// [10] - colunas (n° de vetores) e [8] - linhas (n° de atributos dentro do vetor);
int [][] values = new int[10][8]; // inicializando os valores dentro da matriz que vai conter o tamanho do desenho
int random1, random2; // variaveis para sortear os indices que serão mudados
int escolhaX, escolhaY; // variaveis que vão guardar escolha do usuário ao clicar
int tempo = 0; // variavel para o cronometro

String resultado;
boolean gameOver = false; // aqui ele vai mostrar ou não o cronometro dependendo da condicao

void setup() {
  size(800, 740);
  background(140);

  ellipseMode(CENTER);
  noStroke();

  textSize(30);
  textAlign(CENTER);

  escolhaAleatoria(); // Escolha do elemento da matriz que vai ter o tamanho alterado

  resultado = "Selecione uma diferente";
}

void draw() {
  cenario2(); // mostra o cenário com losangos

  if (!gameOver) {
    contador(); // cronometro

    if (tempo > 600) { // Se passar de 10 segundos, ele para de mostrar o cronometro
      fill(140);
      rect(0, 670, width, 300);
      fill(255);
      resultado = "Você perdeu!";
      text(resultado, 400, 700);

      gameOver = true;
    }
  }
}

// Desenhando cenário com Losangos
void cenario2 () {
  for (int i = 0; i < values.length; i++) {
    for (int j = 0; j < values[0].length; j++) {
      losango(i*80+40, j*80+40, values[i][j]); // é necessário passar multiplicado/somando já para centralizar direitinho, NOTA-SE que quando passo values[i][j] estou chamando na função não uma matriz, mas sim um inteiro, já que quando passo por indice é apenas um int, não uma matriz
    }
  }
}

// Função para desenhar losangos:
void losango(int x, int y, int l) {
  quad(x-l/2, y, x, y-l/2, x+l/2, y, x, y+l/2);

  // Desenhando o texto padrão debaixo dos losangos
  fill(255);
  text(resultado, 400, 700);
}

// Criação da função cronômetro
void contador() {
  rect(0, 730, (tempo/60)*80, 20);
  tempo++;
}

// Função que faz o sorteio dos indices que serão mudados
void escolhaAleatoria () {

  for (int i = 0; i < values.length; i++) {
    for (int j = 0; j < values[0].length; j++) {
      values[i][j] = 80;
    }
  }

  random1 = int(random(0, 9));
  random2 = int(random(0, 7));

  values[random1][random2] = 50;
}

// Caso clique
void mousePressed() {
  escolhaX = mouseX/80;
  escolhaY = mouseY/80;


  println("Índices sorteados: ", random1, " ", random2);
  println("Posição do clique: ", mouseX, " ", mouseY, " => ", escolhaX, " ", escolhaY);

  if (escolhaX == random1 && escolhaY == random2) {
    println("Acertou :)");
    fill(140);
    rect(0, 670, width, 300);
    fill(255);
    resultado = "Acertou!";
    tempo = 0;
    gameOver = true;
  } else {
    println("Errrou");

    fill(140);
    rect(0, 670, width, 300);
    fill(255);
    resultado = "Errou!";
  }
}




// Desenho com ellipses
/*void cenario1() {
 for (int i = 0; i < values.length; i++) {
 for (int j = 0; j < values[0].length; j++) {
 ellipse(i*80+40, j*80+40, values[i][j], values[i][j]);
 }
 }
 }*/
