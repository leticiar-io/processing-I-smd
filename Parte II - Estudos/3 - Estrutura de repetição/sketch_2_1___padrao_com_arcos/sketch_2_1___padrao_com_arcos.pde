void setup() {
  size(600, 600);
  noStroke();
  rectMode(CENTER);
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 6; j++) {
      if ((i+j) % 2 == 0) fill (0);
      else fill(255);
      rect(i*100+100/2, j*100+100/2, 100, 100);
      if ((i+j) % 2 == 0) fill (255);
      else fill(0);
      arc(i*100, j*100+50, 30, 100, radians(270), radians(450), CHORD);
      arc(i*100+50, j*100, 100, 30, radians(0), radians(180), CHORD);
      arc(i*100+50, j*100+100, 100, 30, radians(180), radians(360), CHORD);
      arc(i*100+100, j*100+50, 30, 100, radians(90), radians(270), CHORD);
    }
  }
}
