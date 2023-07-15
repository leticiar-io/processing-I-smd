int n=5;
int l;
int escolhaX=n;
int escolhaY=n;
int[][] M = new int[n][n];
int[][] D = new int[n][n];
void setup() {
  size(600, 600);
  l=width/n;
  textSize(30);
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      M[i][j]=int(random(13));
    }
  }
}
void draw() {
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      fill(255);
      rect(i*l, j*l, l, l);
      if (D[i][j]==1) {
        fill(0);
        text(M[i][j], i*l+30, j*l+30);
      }
    }
  }
}
void mousePressed() {
  escolhaX = mouseX/l;
  escolhaY = mouseY/l;
  println(escolhaX, escolhaY);
  D[escolhaX][escolhaY] = 1;
}
