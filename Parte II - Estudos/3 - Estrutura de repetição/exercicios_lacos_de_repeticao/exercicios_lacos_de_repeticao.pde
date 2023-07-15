size(600, 180);
background(255);

//int x = 0;
//int y = 0;

// FORMA 1 - ENQUANTO
/*while ( x < width) {
 y = 0;
 while ( y < height) {
 line(x, y, x + 30, y+30);
 y = y + 30;
 }
 x = x + 30;
 }*/

// FORMA 2 - FOR
/*for (int x = 0; x < width; x+=30) {
 for (int y = 0; y < height; y+=30) {
 line(x, y, x + 30, y + 30);
 }
 }*/


// FORMA 3 - REPITA ENQUANTO
/*do {
 y = 0; // startando o y
 
 do {
 line(x, y, x + 30, y+30);
 y = y + 30; // incrementando
 } while ( y < height);
 
 x = x + 30;
 } while ( x < width);*/


// linhas mudadas
/*for (int x = 0; x < 20; x++) {
  for (int y = 0; y < 6; y++) {
    if (x % 2 == 0) {
      line(x*30, y*30, x*30+30, y*30+30);
    } else {
      line(x*30+30, y*30, x*30, y*30+30);
    }
  }
}*/

for (int x = 0; x < 20; x++) {
  for (int y = 0; y < 6; y++) {
    
    // x*y%3 
    // (x+y)%3
    // (((x%2) + (y%3) %2))
    if (((x%2) + (y%3)) % 2 == 0) {
      line(x*30, y*30, x*30+30, y*30+30);
    } else {
      line(x*30+30, y*30, x*30, y*30+30);
    }
  }
}
