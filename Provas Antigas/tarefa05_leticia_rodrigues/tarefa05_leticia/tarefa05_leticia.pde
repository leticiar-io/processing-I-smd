void setup () {
  size(550, 550);
  noStroke();
  colorMode (HSB, 360, 100, 100);
}

void draw () {
  for (int j=0; j< 5; j++) {
    for (int i= 0; i<= 5; i++) {
      if ((i+j)%2==0) {
        desenho1(i*110, j*110);
      } else {
        desenho2(i*110, j*110);
      }
    }
  }
}
