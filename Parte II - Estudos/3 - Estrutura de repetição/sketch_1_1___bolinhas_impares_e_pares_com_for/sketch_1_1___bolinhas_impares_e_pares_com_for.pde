
void setup() {
  size(750, 750);

  // mostrando todos
  for (int i = 0; i < 10; i++) {
    ellipse(i*50+50/2, 50, 50, 50);
  }

  // mostrando apenas os pares
  for (int i = 1; i < 10; i= i + 2) {
    fill(60);
    ellipse(i*50+50/2, 100, 50, 50);
  }

  // mostrando apenas os impares
  for (int i = 0; i < 10; i= i + 2) {
    fill(160);
    ellipse(i*50+50/2, 150, 50, 50);
  }

  // mostrando verticalmente
  for (int i = 0; i < 10; i++) {
    fill(0);
    ellipse(50, i*50+210, 50, 50);
  }

  // mostrando todos verticalmente horizontal
  for (int i = 0; i < 10; i++) {
    fill(190);
    ellipse(i*50+100, i*50+210, 50, 50);
  }
}
