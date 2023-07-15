int [] num = new int[10];

void setup() {
  size(100, 100);
  rectMode(CENTER);
  
  // ATRIBUINDO OS VALORES ALEATORIOS AO VETOR
  for (int i = 0; i <= num.length - 1; i++) {
    num[i] = int(random(20, 80));
  }

  // DESENHANDO OS RECT
  for (int i = 0; i <= num.length - 1; i++) {
    rect(0, i*10+5, num[i], 10);
    println(num[i]);
  }
}
