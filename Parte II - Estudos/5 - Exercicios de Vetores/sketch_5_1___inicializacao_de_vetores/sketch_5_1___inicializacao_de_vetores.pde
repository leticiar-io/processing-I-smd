// Primeiro tipo de inicialização
int [] numeros = {0, 1, 2, 23, 24, 5, 6, 7, 8, 99, 10}; // atribuição na mão
int tamanho = numeros.length ;

for (int i = 0; i < tamanho; i++) {
  print(numeros[i], " ");
}

println("tamanho =>", tamanho);

// Segundo tipo de inicialização
int [] randomNumbers = new int[15];
int tamanho2 = randomNumbers.length ;

for(int i = 0; i <= randomNumbers.length - 1; i++) {
  randomNumbers[i] = int(random(-100, 100)); // atribuindo numeros aleatorios
  
  print(randomNumbers[i], " ");
}

println("tamanho =>", tamanho2);
