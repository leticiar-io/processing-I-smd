// Para pecorrer uma Matriz é necessário 2 laços de repetição

// Um para variar os índices dos vetores, de 0 até M.length - 1
// Outro para variar os indices de cada um dos elementos internos a um vetor

int [][] M = new int[5][2];

for (int i = 0; i < M.length; i++) { // quantidade de vetores
  for (int j = 0; j < M[0].length; j++) { // quantidade de  elementos
    M[i][j] = int(random(-100, 100));
    
    print(M[i][j], " ");
  }
}
