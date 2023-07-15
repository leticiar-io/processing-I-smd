/*size(300,300);

fill(255);
stroke(255,100,255);
ellipse(50, 150, 100, 100);

fill(0);
text("Hello world!", 19, 150);
*/

// aplicação 01

void setup() {
  size(500,500);
}

void draw(){
  if (mousePressed) fill(#21EEFF);
  else fill(255);
  ellipse(mouseX, mouseY, 50, 50);
}
