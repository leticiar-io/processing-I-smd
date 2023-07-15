size(600, 600);

background(232, 234, 220);
noStroke();

fill(79, 195, 195); // RED, GREEN, BLUE
ellipse(300, 200, 300, 300); // Circulo laranja (c1)

fill(238, 90, 42);
ellipse(300, 400, 300, 300); // circulo azul (c2)

fill(101, 45, 146);
// o co-centrico do c2 (mesmo, x e  y)
arc(300, 400, 300, 300, radians(222), radians(318), CHORD); // primeiro arco com o centro no c2
// o co-centrico do c1 (mesmo, x e  y)
arc(300, 200, 300, 300, radians(221-180), radians(319-180), CHORD); // segundo arco com o centro no c1

// tudo que for um circulo e eu quero saber o inverto, basta colocar 180°
