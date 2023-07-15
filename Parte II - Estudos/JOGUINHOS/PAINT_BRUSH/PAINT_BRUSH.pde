final int gridSize = 100;

int squareLength;
int x = -1;
int y = -1;

boolean[][] bombs = new boolean[gridSize][gridSize];

void setup() {
  size(800, 800);

  squareLength = width / gridSize;
}

void draw() {
  drawGrid();
  fillSquare();
}

void drawGrid() {
  for (int i = 0; i < gridSize; i++) {
    for (int j = 0; j < gridSize; j++) {
      fill(bombs[i][j] ? 0 : 120);
      rect(i * squareLength, j * squareLength, squareLength, squareLength);
    }
  }
}

void fillSquare() {
  if (mousePressed) {
    x = mouseX / squareLength;
    y = mouseY / squareLength;

    bombs[x][y] = true;
  }
}
