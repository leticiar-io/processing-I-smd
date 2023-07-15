void setup() {
  size(600,600);
  rectMode(CENTER);
  noStroke();
  
  // Para fazer o exercicio de um espiral retangular, pense que todas as rect tem o MESMO CENTRO, o que MUDA É O TAMANHO!
  
  // SE você for fazer um for incrementado, vai dá erro, POR CAUSA DA ORDEM DAS RECTS!! o maior vai vir primeiro, então por isso usamos o decremento
  
  for (int i = 100; i >= 0; i--) {
     fill(i*(255/7));
     rect(width/2, height/2, i*100, i*100);
  }
}
