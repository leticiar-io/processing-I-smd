int hue1, hue2, hue3, hue4;

void setup() {
  size(650, 780);
  noStroke();

  colorMode(HSB, 360, 100, 100);
  
  hue1 = int(random(0, 361));
  hue2 = (hue1 + 30)%360; // o módulo serve para que ele não saia do circulo
  hue3 = (hue2 + 30)%360;
  hue4 = (hue3 + 30)%360;
}

void draw() {
  background(hue1, 60,100);
  
  fill(0, 0, 100);
  ellipse(300/450.00*width, 350/580.00*height, 300/450.00*width, 300/450.00*width);

  fill(hue2, 60, 100);
  triangle(0, 0, 600/450.00*width, 0, 300/450.00*width, 350/580.00*height);

  fill(hue3, 60, 100);
  triangle(600/450.00*width, 0, 300/450.00*width, 350/580.00*height, 600/450.00*width, 700/580.00*height);

  fill(hue4, 60, 100);
  triangle(0, 700/580.00*height, 600/450.00*width, 700/580.00*height, 300/450.00*width, 350/580.00*height);

  fill(0, 0, 100);
  rect(230/450.00*width, 100/580.00*height, 100/450.00*width, 100/580.00*height);

}
