void setup() {
  size(600, 200);
  noStroke();
}

void draw() {
  background(128); // deve ficar se não o quadrado fica grudado
  if (mouseX < 200) {
    background(90);
    fill(150);
    rect(0, 0, 200, 200);
  } else if (mouseX > 200 && mouseX < 400) {
    background(90);

    fill(150);
    rect(200, 0, 200, 200);
  } else if (mouseX > 400 && mouseY < 600) {
    background(90);

    fill(150);
    rect(400, 0, 200, 200);
  }
}
