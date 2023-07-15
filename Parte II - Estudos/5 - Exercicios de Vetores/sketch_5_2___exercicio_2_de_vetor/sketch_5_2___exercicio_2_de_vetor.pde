int [] valores = new int[10];
size(600, 600);
rectMode(CENTER);
// atribuição dos valores aleatórios
for (int i = 0; i <= valores.length - 1; i++) {
  valores[i] = int(random(20, 80));
  println(valores[i]);
}

for (int j = 0; j <= 9; j++) {
  rect(0, j*35+35/2, j*valores[j], 35);
}
