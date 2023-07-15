size(500, 600);
background(255);

for (int x=0; x<width/50; x++) {
  for (int y=0; y<height/50; y++) {
    fill(0);
    if (x%2 == 0 && y%2 == 0) {
      triangle(x*50, y*50, x*50, y*50+50, x*50+50, y*50+50);
    }
    if (x%2 != 0 && y%2 == 0) {
      triangle(x*50, y*50, x*50+50, y*50, x*50, y*50+50);
    }
    if (x%2 == 0 && y%2 != 0) {
      triangle(x*50, y*50, x*50+50, y*50, x*50+50, y*50+50);
    }
    if (x%2 != 0 && y%2 != 0) {
      triangle( x*50+50, y*50, x*50, y*50+50, x*50+50, y*50+50);
    }
  }
}
