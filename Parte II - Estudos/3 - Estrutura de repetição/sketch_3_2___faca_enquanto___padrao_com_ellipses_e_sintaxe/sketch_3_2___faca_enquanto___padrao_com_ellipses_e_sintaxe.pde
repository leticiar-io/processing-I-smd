void setup() {
  size(500, 100);
  int x, y;
  x = 25;
  y = 25;

  /* SINTAXE
   do {
   println(n);
   
   n = n + 1;
   } while(n <10);
   */

  do {
    y = 25;
    ellipse(x, 25, 50, 50);
    do {
      ellipse(x, y, 50, 50);
      y = y + 50;
    } while (y < height);
    x = x + 50;
  } while (x < width);
}
