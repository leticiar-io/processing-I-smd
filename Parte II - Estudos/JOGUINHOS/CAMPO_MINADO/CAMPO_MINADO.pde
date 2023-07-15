// Criando campo minado

int tamanhoDoArray = 5;

int tamanhoDoQuad;
int x = -1; // inicia no -1, para a contagem não ser interferida
int y = -1;

boolean[][] ehBomba = new boolean[tamanhoDoArray][tamanhoDoArray];

void setup() {
  size(600, 600);

  tamanhoDoQuad = width/ tamanhoDoArray;

  geraBomba();
}


// gerando valores aleatórios para criação das bombas
void geraBomba() {
  for (int i = 0; i < ehBomba.length; i++) {
    for (int j = 0; j < ehBomba.length; j++) {
      ehBomba[i][j] = boolean(int(random(2))); // 0 - false 1 - true
    }
  }
}

// Desenhando os campos
void draw() {
  desenhaCampo();
}

// Função que desenha o campo
void desenhaCampo() {
  for (int i = 0; i < tamanhoDoArray; i++) {
    for (int j = 0; j < tamanhoDoArray; j++) {
      fill((x == i && y == j) ? 0 : 200); // alterando a cor quando for pressionado 
      rect(i * tamanhoDoQuad, j * tamanhoDoQuad, tamanhoDoQuad, tamanhoDoQuad);
    }
  }
}

// Apertou no campo
void mousePressed() {
  x = mouseX / tamanhoDoQuad;
  y = mouseY / tamanhoDoQuad;

  if (ehBomba[x][y]) println("É BOMBAAAAAAAAAAAAAAAAAAAAAAAAA");
  else println("Calma mano, c tá safe!");
}
