size(500,500);
//strokeWeight(12);
//rectMode(CENTER);
noStroke();
for(int i=15; i>0; i=i-1){
  fill(i*(255/15));
  ellipse(250/500.0*width, 250/500.00*height, i*50, i*50);
}
