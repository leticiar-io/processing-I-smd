void setup() {
  size(650, 780);
  noStroke();
  ellipse(300/450.00*width, 350/580.00*height, 300/450.00*width, 300/450.00*width);
  
  fill(80);
  triangle(0, 0, 600/450.00*width, 0, 300/450.00*width, 350/580.00*height);
  
  fill(70);
  triangle(600/450.00*width, 0,  300/450.00*width, 350/580.00*height, 600/450.00*width, 700/580.00*height);
  
  fill(60);
  triangle(0, 700/580.00*height, 600/450.00*width, 700/580.00*height, 300/450.00*width, 350/580.00*height);
}
