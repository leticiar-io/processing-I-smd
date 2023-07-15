size(560, 780);

noStroke();
colorMode(HSB, 360, 100, 100);

// Tamanhos
int largura = width;
int altura = height;

// Cores
int hueDaCor1 = 200;
int hueDaCor2 = 230;
int hueDaCor3 = 260;
int hueDaCor4 = 290;

background(hueDaCor4, 20, 100);

fill(hueDaCor2, 60, 100);
rect(0, 0, largura, altura/1.4);

fill(hueDaCor3, 10, 100);
ellipse(largura/3, altura/2, largura/5, altura/7);

fill(hueDaCor4, 60, 100);
triangle(largura/3.5, altura/1.4, largura, altura/1.4, largura, altura/1.9);

fill(hueDaCor3, 80, 100);
triangle(largura/3.5, altura/1.4, largura, altura/1.4, largura, altura);
