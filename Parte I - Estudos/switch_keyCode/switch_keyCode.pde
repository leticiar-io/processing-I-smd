int x = 250;
int y = 250;

void setup() {
  size(300, 300);
}

void draw() {
  background(120);
  if (keyPressed) {
    switch (keyCode) {
    case UP :
      y = y - 5;
      break;
    case DOWN:
      y = y + 5;
      break;
    case RIGHT:
      x = x + 5;
      break;
    case LEFT:
      x = x - 5;
      break;
    }
  }
  
  ellipse (x, y, 20,20);
}
