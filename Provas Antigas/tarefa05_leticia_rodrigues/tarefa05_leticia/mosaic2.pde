void desenho2(int x, int y) {
  // parte de tras
  fill(19, 43, 100);
  rect (x, y, 110, 110);

  // pontas
  fill(53, 13, 100);
  triangle (0+x, 0+y, 0+x, 29+y, 29+x, 0+y);
  triangle(78+x, 110+y, 110+x, 110+y, 110+x, 78+y);

  fill(34, 42, 100);
  triangle (78+x, 0+y, 110+x, 0+y, 110+x, 29+y);
  triangle(0+x, 78+y, 0+x, 110+y, 29+x, 110+y);

  // Rosario
  fill(53, 13, 100);
  triangle(32+x, 5+y, 32+x, 30+y, 49+x, 22+y);
  triangle(32+x, 30+y, 49+x, 22+y, 49+x, 50+y);

  triangle(80+x, 33+y, 105+x, 33+y, 90+x, 55+y);
  triangle(90+x, 55+y, 80+x, 33+y, 63+x, 55+y);
  triangle(20+x, 60+y, 45+x, 60+y, 30+x, 73+y);
  triangle(3+x, 73+y, 30+x, 73+y, 20+x, 60+y);

  triangle(57+x, 63+y, 57+x, 81+y, 75+x, 78+y);
  triangle(75+x, 102+y, 57+x, 81+y, 75+x, 78+y);

  triangle(3+x, 33+y, 29+x, 33+y, 20+x, 55+y);
  triangle(29+x, 33+y, 20+x, 55+y, 45+x, 55+y);

  triangle(57+x, 22+y, 75+x, 30+y, 75+x, 5+y);
  triangle(57+x, 22+y, 75+x, 30+y, 57+x, 50+y);

  triangle(32+x, 78+y, 49+x, 63+y, 49+x, 81+y);
  triangle(32+x, 102+y, 32+x, 78+y, 49+x, 81+y);

  triangle(61+x, 60+y, 80+x, 75+y, 90+x, 60+y);
  triangle(105+x, 75+y, 80+x, 75+y, 90+x, 60+y);
}
