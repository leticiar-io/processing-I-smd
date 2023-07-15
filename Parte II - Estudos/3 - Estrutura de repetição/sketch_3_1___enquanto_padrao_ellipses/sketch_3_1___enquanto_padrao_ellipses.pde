void setup() {
  size(500, 500);
  
  /*int n = 25;
  while(n < width) { // condicao
    ellipse(n, 25, 50, 50);
    
    n = n + 50; // incremento
  }*/
  
  
  int x = 25;
  int y = 25;
  while (x < width) {
    y = 25; // a cada laço do loop tenho que chamar novamente valor do y
    
    while(y < height) {
      ellipse(x,y, 50,50);
      y = y + 50;
    }
    
    x = x + 50;
  }
}
