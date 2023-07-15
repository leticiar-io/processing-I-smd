size(500,500);
//strokeWeight(12);

noStroke();
for(int i=100; i>0; i=i-1){
  fill(255-i*(255/100.00));
  ellipse(250/500.0*width, 250/500.00*height, i*5, i*5);
}
