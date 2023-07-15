int[][] V = new int[5][4];

final int numCars = 5;

int characterY;

boolean gameOver;
boolean lost;

void setup() {
  size(1000, 400);
  noStroke();

  characterY = height - 12;
  gameOver = false;
  lost = false;

  colorMode(HSB, 360, 100, 100);

  setupArray();

  drawLanes();
  for (int i = 0; i < V.length; i++) {
    drawCar(V[i][0], V[i][1], V[i][3]);
  }
  drawCharacter(characterY);
}

void draw() {
  background(160);
  drawLanes();

  if (!gameOver) {
    for (int i = 0; i < V.length; i++) {
      // Speed is already changing
      V[i][2] = int(random(1, 7));
      if (V[i][0] > width) {
        V[i][0] = 0;

        // Changing color
        V[i][3] = int(random(361));
      } else {
        V[i][0] += V[i][2];
      }
      drawCar(V[i][0], V[i][1], V[i][3]);

      // Collision detection
      if (checkCollision(V[i][0], V[i][1], characterY)) {
        gameOver = true;
        lost = true;
      }
    }
    if (characterY - 10 <= 0) {
      gameOver = true;
      lost = false;
    } else {
      drawCharacter(characterY);
    }
  } else {
    background(160);

    fill(0);
    textSize(40);
    textAlign(CENTER, CENTER);
    if (lost) {
      text("GAME OVER!", width/2, height/2);
    } else {
      text("YOU WON!", width/2, height/2);
    }
  }
}

void drawCharacter(int y) {
  circle(width/2, y, 20);
}

void drawCar(int x, int y, int hue) {
  fill(0);
  rect(x + 5, y - 5, 10, 5);
  rect(x + 5, y + 20, 10, 5);
  rect(x + 25, y - 5, 10, 5);
  rect(x + 25, y + 20, 10, 5);

  fill(hue, 70, 70);
  rect(x, y, 40, 20);

  fill(60);
  rect(x + 20, y + 2.5, 10, 15);
}

void drawLanes() {
  for (int i = 0; i * 80 < height; i++) {
    fill(160);
    stroke(1);
    // 5 cars
    // (400 - 2 * 25)/5 = 70
    rect(0, i * 70 + 25, width, 70);
  }
}

void setupArray() {
  // initially, all x = 0, y = (i + 1) * 80 - 50, v = random, h = random
  // car heights: 50 (25 + 70/2 - 20/2), 120, 190, 260, 330
  for (int i = 0; i < V.length; i++) {
    V[i][0] = 0;
    V[i][1] = (i + 1) * 70 - 20;
    V[i][2] = int(random(1, 5));
    V[i][3] = int(random(361));
  }
}

void keyPressed() {
  if (!gameOver) {
    if (characterY - 10 >= 0 && characterY + 10 < height && keyCode == UP) {
      characterY -= 10;
    }
    if (characterY >= 0 && characterY + 20 < height && keyCode == DOWN) {
      characterY += 10;
    }
  }
}

boolean checkCollision(int carX, int carY, int charY) {
  int carLeft = carX;
  int carRight = carX + 40;
  int carTop = carY;
  int carBottom = carY + 20;

  int charLeft = width / 2 - 10;
  int charRight = width / 2 + 10;
  int charTop = charY - 10;
  int charBottom = charY + 10;

  if (carRight >= charLeft && carLeft <= charRight && carBottom >= charTop && carTop <= charBottom) {
    return true;
  }

  return false;
}
