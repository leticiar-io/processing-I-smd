void setup () {
  size(100,100);
  println(isPar(2));
}

boolean isPar (int num) {
  boolean resultado;
  
  if (num % 2 == 0) resultado = true;
  else resultado = false;
  
  return resultado;
}
