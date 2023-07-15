int m;

void setup() {
  size(300,200);
  noStroke();
  m = height/2;
}

void draw() {
  fill(255);
  rect(0, 0, 3*m, 2*m);
  fill(188, 0, 45);
  ellipse(3*m/2, 2*m/2, 3/5.0*(2*m), 3.0/5*(2*m));
}
