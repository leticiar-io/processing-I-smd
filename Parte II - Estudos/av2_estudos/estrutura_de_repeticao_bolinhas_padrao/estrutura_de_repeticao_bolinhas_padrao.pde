int hue1, hue2, hue3;
int i1, i2;

void setup() {
  size(650, 290);
  noStroke();
  colorMode(HSB, 360, 100, 100);
}





void draw() {
  
  if (keyPressed && keyCode == UP) {
    hue1 = int(random(0, 360));
    hue2 = ((hue1 + 120) % 360);
    hue3 = ((hue2 + 120) % 360);
    background(hue1, 30, 100);

    fill(hue2, 20, 100);
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 10, 70, 80);
    }
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 100, 70, 80);
    }
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 190, 70, 80);
    }


    fill(hue3, 100, 100);
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 50, 50, 50);
    }
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 140, 50, 50);
    }
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 230, 50, 50);
    }
  }

  if (keyPressed && keyCode == DOWN) {
    hue1 = int(random(0, 360));
    hue2 = ((hue1 - 90) % 360);
    hue3 = ((hue2 - 90) % 360);
    background(hue1, 30, 100);

    fill(hue2, 20, 100);
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 10, 70, 80);
    }
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 100, 70, 80);
    }
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 190, 70, 80);
    }


    fill(hue3, 100, 100);
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 50, 50, 50);
    }
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 140, 50, 50);
    }
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 230, 50, 50);
    }
  }

  if (keyPressed && keyCode == LEFT) {
    hue1 = int(random(0, 360));
    hue2 = ((hue1 - 100) % 360);
    hue3 = ((hue2 - 100) % 360);
    background(hue1, 30, 100);

    fill(hue2, 20, 100);
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 10, 70, 80);
    }
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 100, 70, 80);
    }
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 190, 70, 80);
    }


    fill(hue3, 100, 100);
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 50, 50, 50);
    }
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 140, 50, 50);
    }
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 230, 50, 50);
    }
  }

  if (keyPressed && keyCode == RIGHT) {
    hue1 = int(random(0, 360));
    hue2 = ((hue1 + 100) % 360);
    hue3 = ((hue2 + 100) % 360);
    background(hue1, 30, 100);

    fill(hue2, 20, 100);
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 10, 70, 80);
    }
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 100, 70, 80);
    }
    for (i1=10; i1<=570; i1=i1+80) {
      rect(i1, 190, 70, 80);
    }


    fill(hue3, 100, 100);
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 50, 50, 50);
    }
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 140, 50, 50);
    }
    for (i2=45; i2<=650; i2=i2+80) {
      ellipse(i2, 230, 50, 50);
    }
  }
}
