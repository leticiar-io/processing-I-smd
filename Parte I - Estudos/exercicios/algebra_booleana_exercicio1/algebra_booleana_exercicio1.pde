void setup() {
  size(300, 300);
  noStroke();
}

void draw () {
  /* if(mouseY < 300) {
   background(0);
   }
   else {
   background(255);
   }*/

  /*if(mouseY>300) background(0);
   if(mouseY<300) background(255);*/



  if (mouseX > 100 && mouseX < 200 && mouseY >100 && mouseY < 200) {
    background(0);
  } else {
    background(255);
  }

  fill(125);
  rect(100, 100, 100, 100);
}
