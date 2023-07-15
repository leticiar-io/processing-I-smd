PImage telaInicial, telaDoJogo, empate, win, lose;
int menu, text;

// menu - troca de screen
// text - muda de texto

// pedra - 1
// papel - 2
// tesoura - 3
// lagarto - 4
// spock - 5

// menu 0 - tela inicial 
// menu 1 - tela do jogo
// menu 2 - empate
// menu 3 - perdeu
// menu 4 - ganhou

float pc;

void setup() {
  size(500, 400);

  telaInicial = loadImage("tela_inicial.png");
  telaDoJogo = loadImage("tela_jogo.png");
  empate = loadImage("empate.png");
  lose = loadImage("lose.png");
  win = loadImage("win.png");

  pc = int((random(1, 6)));
}

void draw() {
  println(pc);
  if (menu == 0) {
    image(telaInicial, 0, 0, width, height);
    if (mousePressed && mouseX > 142 && mouseY > 328 || keyCode == ENTER || keyCode == BACKSPACE || keyCode == TAB ) {
      println("Usuário tocou no jogar!");
      menu = 1;

      text = 0;
    }
  }

  if (menu == 1) {
    image(telaDoJogo, 0, 0, width, height);

    fill(0);
    text("P E D R A - P A P E L - T E S O U R A - L A G A R TO - S P O C K", 105, 60);
    fill(150);
    text("clique em alguma opção para iniciar o jogo", 145, 100);

    // PEDRA
    if (mousePressed && mouseX >= 99 && mouseX <= 186.98 && mouseY >= 192 && mouseY <= 273.22) {
      if (pc == 1) { // pc = pedra e o player = pedra - EMPATE
        menu = 2;
        text = 1;
      }
      if (pc == 2 ) {
        menu = 3;
        text = 2;
      }
      if (pc == 3) {
        menu = 4;
        text = 3;
      }
      if (pc == 4) {
        menu = 4;
        text = 4;
      }
      if (pc == 5) {
        menu = 3;
        text = 5;
      }
    }


    // PAPEL
    if (mousePressed && mouseX >= 204.74 && mouseX <= 292.72 && mouseY >= 192 && mouseY <= 273.22) {
      if (pc == 1) {
        menu = 4;
        text = 6;
      }
      if (pc == 2 ) {
        menu = 2;
        text = 7;
      }
      if (pc == 3) {
        menu = 3;
        text = 8;
      }
      if (pc == 4) {
        menu = 3;
        text = 9;
      }
      if (pc == 5) {
        menu = 4;
        text = 10;
      }

      println("PAPEL");
    }

    // TESOURA
    if (mousePressed && mouseX >= 312.02 && mouseX <= 400 && mouseY >= 192 && mouseY <= 273.22) {
      if (pc == 1) {
        menu = 3;
        text = 12;
      }
      if (pc == 2 ) {
        menu = 4;
        text = 13;
      }
      if (pc == 3) {
        menu = 2;
        text = 11;
      }
      if (pc == 4) {
        menu = 4;
        text = 14;
      }
      if (pc == 5) {
        menu = 3;
        text = 15;
      }

      println("TESOURA");
    }

    // LAGARTO
    if (mousePressed && mouseX >= 162.07 && mouseX <= 250.05 && mouseY >= 277.78 ) {
      if (pc == 1) {
        menu = 3;
        text = 16;
      }
      if (pc == 2 ) {
        menu = 4;
        text = 17;
      }
      if (pc == 3) {
        menu = 3;
        text = 18;
      }
      if (pc == 4) {
        menu = 2;
        text = 19;
      }
      if (pc == 5) {
        menu = 4;
        text = 20;
      }

      println("LAGARTO");
    }

    if (mousePressed && mouseX >= 263 && mouseX <= 350.98 && mouseY >= 277.78 ) {
      if (pc == 1) { // pc = papel e o player = papel - EMPATE
        menu = 4;
        text = 21;
      }
      if (pc == 2 ) {
        menu = 3;
        text = 22;
      }
      if (pc == 3) {
        menu = 4;
        text = 23;
      }
      if (pc == 4) {
        menu = 3;
        text = 24;
      }
      if (pc == 5) {
        menu = 2;
        text = 25;
      }

      println("SPOCK");
    }
  }

  if (menu == 2) {
    image(empate, 0, 0, width, height);
    if (text == 1) {
      text("V O C Ê  E S C O L H E U  P E D R A", 170, 110);
      text("P C  E S C O L H E U  P E D R A", 180, 130);
    }
    if (text == 7) {
      text("V O C Ê  E S C O L H E U  P A P E L", 170, 110);
      text("P C  E S C O L H E U  P A P E L", 180, 130);
    }
    if (text == 11) {
      text("V O C Ê  E S C O L H E U  T E S O U R A", 170, 110);
      text("P C  E S C O L H E U  T E S O U R A", 180, 130);
    }
    if (text == 19) {
      text("V O C Ê  E S C O L H E U  L A G A R T O", 170, 110);
      text("P C  E S C O L H E U  L A G A R T O", 180, 130);
    }
    if (text == 25) {
      text("V O C Ê  E S C O L H E U  S P O C K", 170, 110);
      text("P C  E S C O L H E U  S P O C K", 180, 130);
    }
  }

  if (menu == 3) {
    image(lose, 0, 0, width, height);
    if (text == 2) {
      text("V O C Ê  E S C O L H E U  P E D R A", 170, 110);
      text("P C  E S C O L H E U  P A P E L", 180, 130);

      text("papel cobre a pedra", 200, 160);
    }
    if (text == 5) {
      text("V O C Ê  E S C O L H E U  P E D R A", 170, 110);
      text("P C  E S C O L H E U  S P O C K", 180, 130);

      text("spock vaporiza a pedra", 190, 160);
    }
    if (text == 8) {
      text("V O C Ê  E S C O L H E U  P A P E L", 170, 110);
      text("P C  E S C O L H E U  T E S O U R A", 170, 130);
      text("tesoura corta papel", 200, 160);
    }
    if (text == 9) {
      text("V O C Ê  E S C O L H E U  P A P E L", 170, 110);
      text("P C  E S C O L H E U  L A G A R T O", 170, 130);
      text("largato come o papel", 190, 160);
    }
    if (text == 12) {
      text("V O C Ê  E S C O L H E U  T E S O U R A", 160, 110);
      text("P C  E S C O L H E U  P E D R A", 180, 130);
      text("pedra quebra tesoura", 190, 160);
    }
    if (text == 15) {
      text("V O C Ê  E S C O L H E U  T E S O U R A", 160, 110);
      text("P C  E S C O L H E U  S P O C K", 180, 130);
      text("spock quebra tesoura", 190, 160);
    }
    if (text == 16) {
      text("V O C Ê  E S C O L H E U  L A G A R T O", 160, 110);
      text("P C  E S C O L H E U  P E D R A", 180, 130);

      text("pedra esmaga o lagarto", 190, 160);
    }
    if (text == 18) {
      text("V O C Ê  E S C O L H E U  L A G A R T O", 160, 110);
      text("P C  E S C O L H E U  T E S O U R A", 170, 130);

      text("tesoura mata lagarto", 190, 160);
    }
    if (text == 24) {
      text("V O C Ê  E S C O L H E U  S P O C K", 160, 110);
      text("P C  E S C O L H E U  L A G A R T O", 160, 130);

      text("lagarto envenena spock", 180, 160);
    }
    if (text == 22) {
      text("V O C Ê  E S C O L H E U  S P O C K", 160, 110);
      text("P C  E S C O L H E U  P A P E L", 170, 130);

      text("papel refuta spock", 190, 160);
    }
  }

  if (menu == 4) {
    image(win, 0, 0, width, height);
    if (text == 3) {
      text("V O C Ê  E S C O L H E U  P E D R A", 170, 110);
      text("P C  E S C O L H E U  T E S O U R A", 170, 130);

      text("pedra quebra a tesoura", 190, 160);
    }
    if (text == 4) {
      text("V O C Ê  E S C O L H E U  P E D R A", 170, 110);
      text("P C  E S C O L H E U  L A G A R T O", 170, 130);

      text("pedra esmaga o lagarto", 190, 160);
    }
    if (text == 6) {
      text("V O C Ê  E S C O L H E U  P A P E L", 170, 110);
      text("P C  E S C O L H E U  P E D R A", 180, 130);
      text("papel cobre a pedra", 200, 160);
    }
    if (text == 10) {
      text("V O C Ê  E S C O L H E U  P A P E L", 170, 110);
      text("P C  E S C O L H E U  S P O C K", 180, 130);
      text("papel refuta o spock", 200, 160);
    }
    if (text == 13) {
      text("V O C Ê  E S C O L H E U  T E S O U R A", 160, 110);
      text("P C  E S C O L H E U  P A P E L", 180, 130);
      text("tesoura corta papel", 190, 160);
    }
    if (text == 14) {
      text("V O C Ê  E S C O L H E U  T E S O U R A", 160, 110);
      text("P C  E S C O L H E U  L A G A R T O", 170, 130);
      text("tesoura mata lagarto", 190, 160);
    }
    if (text == 16) {
      text("V O C Ê  E S C O L H E U  L A G A R T O", 160, 110);
      text("P C  E S C O L H E U  P A P E L", 180, 130);

      text("lagarto come papel", 190, 160);
    }
    if (text == 17) {
      text("V O C Ê  E S C O L H E U  L A G A R T O", 160, 110);
      text("P C  E S C O L H E U  P A P E L", 180, 130);

      text("lagarto come papel", 190, 160);
    }
    if (text == 20) {
      text("V O C Ê  E S C O L H E U  L A G A R T O", 160, 110);
      text("P C  E S C O L H E U  S P O C K", 180, 130);

      text("lagarto envenena spock", 190, 160);
    }
    if (text == 23) {
      text("V O C Ê  E S C O L H E U  S P O C K", 160, 110);
      text("P C  E S C O L H E U  T E S O U R A", 160, 130);

      text("spock quebra tesoura", 190, 160);
    }
    if (text == 21) {
      text("V O C Ê  E S C O L H E U  S P O C K", 160, 110);
      text("P C  E S C O L H E U  P E D R A", 170, 130);

      text("spock evaporiza pedra", 190, 160);
    }
  }
}
