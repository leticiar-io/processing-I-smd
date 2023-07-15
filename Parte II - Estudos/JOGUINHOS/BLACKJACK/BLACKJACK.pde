int n=5; // tanto de rect que vai se repetir
int l; // tamanho do rect

int escolhaX=n; // coordenada X do rect escolhindo quando clicado
int escolhaY=n; // coordenada Y do rect escolhido quando clicado

int[][] M; // MATRIZ DE VALORES QUE VAO SER SORTEADOS

int[][] D = new int[n][n]; // MATRIZ QUE GUARDA O INDICE DE CADA CARTA VIRADA
int soma = 0; // contador 

void setup() {
  size(600, 600);

  l=width/n; // tamanho dos rect
  textSize(30);

  M = geraMatriz(5, 13); // chamando a função geraMatriz e passando os parametros: 5 (tanto de vetores e elementos) e 13 (valor máximo para sorteio)
  
  // FORMATAÇÃO NO CONSOLE DE UMA MATRIZ BONITINHA:
  for (int i=0; i<M.length; i++) {
    for (int j=0; j<M.length; j++) {
      print(M[i][j], " ");
    }
    println(); 
  }
}

void draw() {
  // desenhando rect 
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      fill(0);
      stroke(255);
      strokeWeight(2);
      rect(i*l, j*l, l, l);
      
      if (D[i][j]==1) { // Se a carta estiver virada, ela muda a estilização
        fill(255);
        rect(i*l, j*l, l, l);
        fill(0);

        text(M[i][j], i*l+30, j*l+30);
      }
    }
  }
}

// Quando o usuário clicar: 
void mousePressed() {
  escolhaX = mouseX/l; // adquirindo o indice dos vetores 
  escolhaY = mouseY/l; // adquirindo o indice dos elementos 
  
  println(escolhaX, escolhaY); // mostra qual foi o vetor e qual o índice que foi clicado
  D[escolhaX][escolhaY] = 1; // guarda o valor em que os indices da matriz foi clicado

  soma = soma + M[escolhaX][escolhaY]; // faz a soma de cada valor em que foi apertado 

  println("soma =>", soma); 
  if (soma > 25) { // condição
    println("Maior que 25, você perdeu!");
  }
}

// Para gerar matriz:
int[][] geraMatriz(int n, int v) { // precisa do int[][], pois a questão pede para a função RETORNAR o valor, logo não poderia ser usado void
  int [][] temp = new int [n][n]; // variavel local

  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      temp[i][j]=int(random(v + 1));
    }
  }

  return temp;
}
