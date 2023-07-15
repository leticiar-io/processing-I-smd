// Formas para resolver o exercicio 4 - Crie um procedimento no processing que receba um vetor de 30 posições contendo componentes RGB de dez cores. Cada três valores do vetor correspondem, então, a uma cor. A função desenhará na tela 10 círculos, cada um com as cores retiradas do vetor.

// Jeito 1 - CORES ALEATORIAS
/*int [] valores = new int[30]; // vetor recebe 30 posições
 
 void setup() {
 size(600, 100);
 ellipseMode(CENTER);
 
 // Atribuindo valores em cada posição da Array valores
 for (int i = 0; i < valores.length - 1; i++) {
 valores[i] = int(random(0, 254));
 print(valores[i], " ");
 }
 
 desenhaCirculo(valores);
 }
 
 void desenhaCirculo (int [] n) {
 for (int i = 0; i < 10; i++) {
 int valorR = n[i];
 int valorG = n[i + 1];
 int valorB = n[i + 2];
 fill(valorR, valorG, valorB);
 
 ellipse(i*60+30, 50, 60, 60);
 }
 }*/


// Jeito 2 - CORES PRÉ DEFINIDAS
int[] cores = {
  255, 0, 0, // Vermelho
  0, 255, 0, // Verde
  0, 0, 255, // Azul
  255, 255, 0, // Amarelo
  255, 0, 255, // Magenta
  0, 255, 255, // Ciano
  128, 0, 255, // Roxo
  255, 128, 0, // Laranja
  255, 255, 255, // Branco
  0, 0, 0        // Preto
};

void setup() {
  size(600, 100);
  ellipseMode(CENTER);

  desenhaCirculo(cores);
}

void desenhaCirculo (int [] n) {
  for (int i = 0; i < 10; i++) {
    int valorR = n[i * 3];
    int valorG = n[i * 3 + 1];
    int valorB = n[i * 3 + 2];
    fill(valorR, valorG, valorB);

    ellipse(i*60+30, 50, 60, 60);
  }
}
