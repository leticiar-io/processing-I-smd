void setup() {
  size(500, 500);
  noStroke();
  background(91, 121, 132);
  fill(136, 189, 194);

  for (int j = 0; j < 5; j++) {
    for (int i = 0; i < 5; i++) {
      if (j% 2 == 0) triangle(i*100+50, j*100+1, i*100, j*100+100, i*100+100, j*100+100); // para fazer triangulos todos devem ter a mesmo tamanho como base
      else {
        triangle(0, j*100, 0, j*100+100, 50, j*100+100);
        triangle(i*100+100, j*100+1, i*100+50, j*100+100, i*100+150, j*100+100);
      }
    }
  }
}
