int n = 3;
int tamanho, tamanhoRect2, tamanhoEllipse;

void setup () {
  size(600, 600);
  tamanho = width/n;
  tamanhoRect2 = (width/n )- 20;
  tamanhoEllipse = (width/n) - 30;
  colorMode(HSB, 360, 100, 100);
  noStroke();
  
  ellipseMode(CENTER);
  
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      fill(0, 18, 100);
      rect(i*tamanho, j*tamanho, tamanho, tamanho);
      
      fill(0, 5, 100);
      //   i * tamanho do rect maior + (tananho do rect maior - tamanho do rect que tá sendo desenhando) / 2 ---> CENTRALIZANDO UM RECT DENTRO DE OUTRO RECT
      rect(i*tamanho + (tamanho - tamanhoRect2)/2, j*tamanho + (tamanho - tamanhoRect2)/2, tamanhoRect2, tamanhoRect2);
      
      fill(174, 15, 80);
      //      i * tamanho do rect maior + tamanho do rect maior divido por 2 --> ISSO NA ELLIPSE
      ellipse(i*tamanho +  tamanho/2, j*tamanho + tamanho/2, tamanhoEllipse, tamanhoEllipse); 
    }
  }
}
