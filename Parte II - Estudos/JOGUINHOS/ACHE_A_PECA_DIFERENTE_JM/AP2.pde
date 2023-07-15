int[][] sizes;
final int size = 80;

// smaller picture coordinates
int rx, ry;

boolean played = false;

String message;

// timer
int totalTime = 10 * 60;
int remainingTime = totalTime;
int barHeight = 20;

// other pictures;
int picture = 1;

void setup() {
  // w = 80 * 10 + 9 * 5
  size(845, 800);
  noStroke();

  sizes = new int[10][8];

  assignSize();
}

void draw() {
  background(160);

  repeatPictures();
  showMessages();
  drawTimer();
}

void assignSize() {
  for (int i = 0; i < sizes.length; i++) {
    for (int j = 0; j < sizes[i].length; j++) {
      sizes[i][j] = size;
    }
  }

  rx = int(random(0, 10));
  ry = int(random(0, 8));
  sizes[rx][ry] = int(0.9 * size);
}

void repeatPictures() {
  for (int i = 0; i < sizes.length; i++) {
    for (int j = 0; j < sizes[i].length; j++) {
      drawPictures(i * (size + 5) + size/2, j * (size + 5) + size/2, sizes[i][j]);
    }
  }
}

void drawPictures(int x, int y, int l) {
  switch(picture) {
  case 1:
    fill(0);
    square(x - l/2, y - l/2, l);
    fill(255);
    quad(x - l/2, y, x, y - l/2, x + l/2, y, x, y + l/2);
    fill(0);
    square(x - l/4, y - l/4, l/2);
    break;
  case 2:
    fill(0);
    square(x - l/2, y - l/2, l);
    fill(255);
    quad(x - l/2, y, x, y - l/2, x + l/2, y, x, y + l/2);
    fill(0);
    circle(x, y, l/2);
    break;
  case 3:
    fill(0);
    circle(x, y, l);
    fill(255);
    quad(x - l/2, y, x, y - l/2, x + l/2, y, x, y + l/2);
    fill(0);
    square(x - l/4, y - l/4, l/2);
    break;
  }
}

void showMessages() {
  textSize(30);
  textAlign(CENTER);

  if (!played) {
    message = "Select the different picture.";
  }
  text(message, width/2, height - 35);
}

void drawTimer() {
  float currentWidth = map(remainingTime, 0, totalTime, 0, width);

  fill(255);
  rect(0, height - 20, currentWidth, barHeight);

  remainingTime--;

  if (remainingTime < 0) {
    played = true;
    message = "Time's up! You lost. Press R to reset.";
  }
}

void reset() {
  played = false;
  remainingTime = totalTime;
  barHeight = 20;
  picture = int(random(1, 4));
  assignSize();
}

void mousePressed() {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    if (remainingTime > 0) {
      played = true;

      int x = mouseX/size;
      int y = mouseY/size;

      if (x == rx && y == ry) {
        message = "You got it! Press R to reset.";
        barHeight = 0;
      } else {
        message = "Try again!";
      }
    }
  }
}

void keyPressed() {
  if (played) {
    if (key == 'r' || key == 'R') {
      reset();
    }
  }
}
