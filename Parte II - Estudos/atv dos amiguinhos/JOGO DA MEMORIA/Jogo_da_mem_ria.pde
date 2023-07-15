final int gridSize = 4;

int squareLength;
int x = -1;
int y = -1;

int[][] numbers = new int[gridSize][gridSize];
boolean[][] clicked = new boolean[gridSize][gridSize];

int[] firstCardIndexes = {-1, -1};

boolean isGameOver = false;

void setup() {
  size(600, 600);

  squareLength = width / gridSize;

  textAlign(CENTER, CENTER);
  textSize(24);

  populate();
  shuffleNumbers();
}

void draw() {
  drawBoard();
}

void drawBoard() {
  if (!isGameOver) {
    for (int i = 0; i < gridSize; i++) {
      for (int j = 0; j < gridSize; j++) {
        fill(clicked[i][j] ? 70 : 160);
        rect(i * squareLength, j * squareLength, squareLength, squareLength);
        if (clicked[i][j]) {
          fill(255);
          text(numbers[i][j], i * squareLength + (squareLength / 2), j * squareLength + (squareLength / 2));
        }
      }
    }
  } else {
    background(180);
    fill(0);
    textSize(64);
    text("Game Over!", width / 2, height / 2 - 30);
    rect(width / 2 - 100, height / 2 + 30, 200, 50, 10);
    textSize(24);
    fill(220);
    text("Try again", width / 2, height / 2 + 50);
  }
}

void populate() {
  int totalNumbers = gridSize * gridSize;
  int[] num = new int[totalNumbers];

  for (int i = 0; i < totalNumbers; i++) {
    num[i] = (i / 2) + 1;
  }

  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers[i].length; j++) {
      int index = int(random(num.length));
      numbers[i][j] = num[index];
      // Remove the selected number from the array so it can't be chosen again
      num = removeElement(num, index);
    }
  }
}

int[] removeElement(int[] arr, int index) {
  int[] newArr = new int[arr.length - 1];
  System.arraycopy(arr, 0, newArr, 0, index);
  System.arraycopy(arr, index + 1, newArr, index, arr.length - index - 1);
  return newArr;
}


void shuffleNumbers() {
  // Shuffle the numbers using Fisher-Yates algorithm
  int totalNumbers = gridSize * gridSize;
  for (int i = totalNumbers - 1; i > 0; i--) {
    int j = floor(random(i + 1));
    int temp = numbers[i % gridSize][i / gridSize];
    numbers[i % gridSize][i / gridSize] = numbers[j % gridSize][j / gridSize];
    numbers[j % gridSize][j / gridSize] = temp;
  }
}

void checkGameOver() {
  for (int i = 0; i < clicked.length; i++) {
    for (int j = 0; j < clicked.length; j++) {
      if (!clicked[i][j]) {
        return;
      }
    }
  }
  isGameOver = true;
}

void resetGame() {
  populate();
  shuffleNumbers();
  clicked = new boolean[gridSize][gridSize];
  firstCardIndexes[0] = -1;
  firstCardIndexes[1] = -1;
  isGameOver = false;
}

void mousePressed() {
  if (isGameOver) {
    if (mouseX >= (width / 2 - 100) && mouseX < (width / 2 + 100) 
        && mouseY >= (height / 2 + 30) && mouseY < (height / 2 + 80)) resetGame();
  } else {
    if (mouseX >= 0 && mouseX < width 
        && mouseY >= 0 && mouseY < height) {
      x = mouseX / squareLength;
      y = mouseY / squareLength;

      if (!clicked[x][y]) {
        clicked[x][y] = true;

        if (firstCardIndexes[0] == -1 && firstCardIndexes[1] == -1) {
          firstCardIndexes[0] = x;
          firstCardIndexes[1] = y;
        } else {
          if (numbers[firstCardIndexes[0]][firstCardIndexes[1]] == numbers[x][y]) {
            firstCardIndexes[0] = -1;
            firstCardIndexes[1] = -1;

            checkGameOver();
          } else {
            delay(1000);
            clicked[x][y] = false;
            clicked[firstCardIndexes[0]][firstCardIndexes[1]] = false;
            firstCardIndexes[0] = -1;
            firstCardIndexes[1] = -1;
          }
        }
      }
    }
  }
}
