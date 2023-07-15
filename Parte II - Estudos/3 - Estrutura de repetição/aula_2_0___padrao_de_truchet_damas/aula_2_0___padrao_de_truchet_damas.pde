void setup() {
  size(600, 600);
  ellipseMode(CENTER);

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 10; j++) {
      if ((i+j) % 2 == 0) fill(255);
      else fill(0);
      rect(i*100, j*100, 100, 100);
      
      if ((i+j) % 2 == 0) fill(0);
      else fill(255);
      ellipse(i*100+(100/2), j*100+(100/2), 90, 90);
    }
  }
}
