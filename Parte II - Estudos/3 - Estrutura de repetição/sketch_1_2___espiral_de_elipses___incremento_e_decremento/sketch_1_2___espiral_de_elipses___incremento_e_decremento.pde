void setup() {
  size(600,600);
  ellipseMode(CENTER);
  
  // Para fazer o exercicio de um espiral, pense que todas as ellipses tem o MESMO CENTRO, o que MUDA É O TAMANHO!
  
  // SE você for fazer um for incrementado, vai dá erro, POR CAUSA DA ORDEM DAS ELLIPSES!! o maior vai vir primeiro, então por isso usamos o decremento
  
  // Forma de fazer n° 1 
  /*for (int i = 100; i >= 0; i--) {
     if(i % 2 == 0) fill(255); else fill(0);
     ellipse(width/2, height/2, i*50, i*50);
  }*/
  
  // Forma de fazer n° 2 
  strokeWeight(25);
  for(int i = 10; i > 0; i--) {
    ellipse(300, 300, i*100, i*100);
  }
  
}
