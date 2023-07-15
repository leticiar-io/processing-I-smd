int n=5;
int l;
int escolhaX=n;
int escolhaY=n;
int[][] M = new int[n][n];
void setup() {
  size(600, 600);
  textSize(20);
  l=width/n;
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      M[i][j]=int(random(2));
    }
  }
}
void draw() {
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      fill(255);
      rect(i*l, j*l, l, l);
      fill(0);
      text(M[i][j], i*l+30, j*l+30);
    }
  }
}
void mousePressed() {
  escolhaX = mouseX/l;
  escolhaY = mouseY/l;
  println(escolhaX, escolhaY);
}
