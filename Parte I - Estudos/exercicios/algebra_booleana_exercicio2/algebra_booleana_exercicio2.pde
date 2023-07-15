void setup() {
  size(500, 300);
  
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {
  background(0, 0, 0);
  if (mouseX > 100 && mouseX < 200 && mouseY > 100 && mouseY < 200) {
    background(200, 100, 100);
  } else if (mouseX < 600 && mouseX > 300 && mouseY > 100 && mouseY < 200) {
    background(20, 100, 100);
  }
  
  fill(200, 100, 100);
  rect(100, 100, 100, 100);

  fill(20, 100, 100);
  rect(300, 100, 100, 100);
}
