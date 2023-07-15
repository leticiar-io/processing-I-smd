void setup() {
  size(600, 200);
  noStroke();
}

void draw() {
  background(128); // deve ficar se não o quadrado fica grudado
  if (mouseX > 200) {
    fill(50);
    rect(0, 0, 200, 200);
  }
  if (mouseX < 200 || mouseX > 400) {
    fill(50);
    rect(200, 0, 200, 200);
  }
  
  if (mouseX > 400) {
    fill(50);
    rect(200,0,200,200);
  }
}
