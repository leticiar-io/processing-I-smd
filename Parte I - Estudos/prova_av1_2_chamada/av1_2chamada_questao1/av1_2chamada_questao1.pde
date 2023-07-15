void setup() {
  size(600, 790);
  noStroke();
}

void draw() {
  background(150);
  
  fill(255);
  ellipse(400, 500, 380, 380);
  
  fill(100);
  triangle(0, 0, 425, 500, 800, 0);

  fill(130);
  triangle(160, 800, 425, 500, 800, 900);

  fill(230);
  triangle(800, 0, 425, 500, 800, 900);
}
