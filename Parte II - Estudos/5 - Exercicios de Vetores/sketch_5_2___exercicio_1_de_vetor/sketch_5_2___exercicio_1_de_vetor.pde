int [] numbers = new int[20];
int sorteio;

for (int i = 0; i <= numbers.length - 1; i++) { // TEM QUE DIMINUIR 1 SEMPRE POIS O INDICE SEMPRE COMEÇA DO 0
  numbers[i] = int(random(0, 30));
  print( numbers[i], " ");
}

println("");

sorteio = int(random(0, 20));
println("----------------------------------------------------");
println("Índice: ", sorteio); // LEMBRE -SE QUE COMEÇA SEMPRE DO 0
println("Elemento:", numbers[sorteio]);
println("Posição anterior: ", numbers[sorteio -1]);
println("Posição seguinte: ", numbers[sorteio + 1]);
