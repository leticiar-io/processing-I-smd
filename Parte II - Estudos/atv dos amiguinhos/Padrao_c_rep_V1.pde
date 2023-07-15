int size = 100;

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(255);

  for (int x = 0; x < width; x += size) {
    for (int y = 0; y < height; y += size) {
      pushMatrix();
      translate(x, y);

      int i = x / size;
      int j = y / size;

      if ((i + j) % 2 == 0) {
        drawPattern2(x, y, size);
      } else {
        drawPattern1(x, y, size);
      }

      popMatrix();
    }
  }
}

void drawPattern1(int x, int y, int l) {
  fill(0);
  arc(x + l / 2, y + l / 2, 3 * l / 4, 3 * l / 4, radians(135 + 90), radians(315 + 90));
  arc(x + l / 2, y + 3 * l / 2, 3 * l / 4, 3 * l / 4, radians(135 - 180), radians(315 - 180));
  arc(x + 3 * l / 2, y + l / 2, 3 * l / 4, 3 * l / 4, radians(135), radians(315));
  arc(x + 3 * l / 2, y + 3 * l / 2, 3 * l / 4, 3 * l / 4, radians(135 - 90), radians(315 - 90));

  triangle(x, y, x, y + 2 * l, x + l, y + l);
  triangle(x + 2 * l, y, x + 2 * l, y + 2 * l, x + l, y + l);

  fill(255);
  arc(x + l / 2, y + 3 * l / 2, 3 * l / 4, 3 * l / 4, radians(135), radians(315));
  arc(x + l / 2, y + l / 2, 3 * l / 4, 3 * l / 4, radians(135 - 90), radians(315 - 90));
  arc(x + 3 * l / 2, y + l / 2, 3 * l / 4, 3 * l / 4, radians(135 - 180), radians(315 - 180));
  arc(x + 3 * l / 2, y + 3 * l / 2, 3 * l / 4, 3 * l / 4, radians(135 + 90), radians(315 + 90));
}

void drawPattern2(int x, int y, int l) {
  fill(0);
  triangle(x, y, x + 2 * l, y, x + l, y + l);
  triangle(x + 2 * l, y + 2 * l, x, y + 2 * l, x + l, y + l);

  arc(x + l / 2, y + 3 * l / 2, 3 * l / 4, 3 * l / 4, radians(135), radians(315));
  arc(x + l / 2, y + l / 2, 3 * l / 4, 3 * l / 4, radians(135 - 90), radians(315 - 90));
  arc(x + 3 * l / 2, y + l / 2, 3 * l / 4, 3 * l / 4, radians(135 - 180), radians(315 - 180));
  arc(x + 3 * l / 2, y + 3 * l / 2, 3 * l / 4, 3 * l / 4, radians(135 + 90), radians(315 + 90));

  fill(255);
  arc(x + l / 2, y + l / 2, 3 * l / 4, 3 * l / 4, radians(135 + 90), radians(315 + 90));
  arc(x + l / 2, y + 3 * l / 2, 3 * l / 4, 3 * l / 4, radians(135 - 180), radians(315 - 180));
  arc(x + 3 * l / 2, y + l / 2, 3 * l / 4, 3 * l / 4, radians(135), radians(315));
  arc(x + 3 * l / 2, y + 3 * l / 2, 3 * l / 4, 3 * l / 4, radians(135 - 90), radians(315 - 90));
}
