void setup() {
  size(300, 300);
  ellipseMode(CENTER);

  // Para fazer o exercicio de um espiral, pense que todas as ellipses tem o MESMO CENTRO, o que MUDA É O TAMANHO!

  // SE você for fazer um for incrementado, vai dá erro, POR CAUSA DA ORDEM DAS ELLIPSES!! o maior vai vir primeiro, então por isso usamos o decremento

  // Exercicio 1 com cores da ellipse
  for (int i = 100; i >= 0; i--) {
    strokeWeight(10);
    stroke(0);
    if (i % 2 == 0) fill(100, 150, 50);
    else fill(150, 100, 222);
    ellipse(width/2, height/2, i*50, i*50);
  }

  /* Exercicio 2 com cores de ellipse
  for (int i = 100; i >= 0; i--) {
    strokeWeight(10);
    stroke(150, 100, 222 );
    if (i % 2 == 0) fill(100, 150, 50);
    else fill(204, 135, 122);
    ellipse(width/2, height/2, i*50, i*50);
  }*/
}
