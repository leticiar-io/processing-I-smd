void setup() {
  size(600, 600);
  rectMode(CENTER);
  ellipseMode(CENTER);
  //quad(0, 75, 75, 0, 150, 75, 75, 150);

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if ((i+j) % 2 == 0) fill (0);
      else fill(255);
      rect(i*150+150/2, j*150+150/2, 150, 150);

      if ((i+j) % 2 == 0) fill (255);
      else fill(0);
      ellipse(i*150+150/2, j*150+150/2, 150, 150);

      if ((i+j) % 2 == 0) fill (0);
      else fill(255);
      quad(i*150, j*150+75, i*150+75, j*150, i*150+150, j*150+75, i*150+75, j*150+150);

      if ((i+j) % 2 == 0) fill (255);
      else fill(0);
      ellipse(i*150+150/2, j*150+150/2, 105, 105);

      if ((i+j) % 2 == 0) fill (0);
      else fill(255);
      rect(i*150+75, j *150+75, 70, 70);

      if ((i+j) % 2 == 0) fill (255);
      else fill(0);
      ellipse(i*150+150/2, j*150+150/2, 70, 70);
    }
  }
}
