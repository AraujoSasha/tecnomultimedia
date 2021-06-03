import processing.sound.*;
SoundFile sonido1, sonido2;
PImage fondo, flechaizq, flechaarri, flechaabajo, flechaderecha;
PImage flechaizqcolor, flechadercolor, flechaarribacolor, flechaabajocolor;
PImage nivel1, nivel2, nivel3;
PImage cabeza1, cabeza2;
float velo=0.7;
float poscabeza1=160;
float poscabeza2=205;
int posy1=round(random(500, 600));
int posy2=round(random(600, 700));
int posy3=round(random(700, 800));
int posy4=round(random(800, 900));
int velocidad=3;
int contador;
int game=0;
PFont fuente1;

void setup() {
  size (400, 400);
  fondo= loadImage ("fondo.jpg");
  flechaizq= loadImage ("flechaizq.png");
  flechaarri= loadImage ("flechaarriba.png");
  flechaabajo= loadImage ("flechaabajo.png");
  flechaderecha= loadImage ("flechader.png");
  flechaizqcolor=loadImage("flechaizqcolor.png");
  flechadercolor= loadImage("flechadercolor.png");
  flechaarribacolor= loadImage("flechaarribacolor.png");
  flechaabajocolor=loadImage("flechaabajocolor.png");
  cabeza1= loadImage("cabeza1.png");
  cabeza2=loadImage("cabeza2.png");
  nivel1=loadImage("lvl1.png");
  nivel2=loadImage("lvl2.png");
  nivel3=loadImage("lvl3.png");
  sonido1 = new SoundFile(this, "error.mp3");
  sonido2 = new SoundFile(this, "ambiente.mp3");
  sonido2.loop ();
  fuente1 = loadFont ("TempusSansITC-48.vlw");
  textFont(fuente1, 48);
  textSize(50);
  textMode(CENTER);
}


void draw() {  
  background (200);
  //******************************INICIO************************
  if (game==0) {
    background(0);
    text("Click to Start", 70, 200, 48);
    //****************************DIFICULTAD************************
  } else if (game==4) {
    textSize(40);
    background(0);
    text("Seleccionar Dificultad", 30, 40, 48);
    text("Facil"+"\n\nMedio"+"\n\nDificil", 30, 150, 48);
    image(nivel1, 136, 90, 70, 70);
    image(nivel2, 180, 200, 70, 70);
    image(nivel3, 170, 310, 70, 70);
    //******************************FACIL**************************
  } else if (game==1) {
    image(fondo, 0, 0, width, height);
    image(flechaizq, 30, 30, 70, 70);
    image(flechaarri, 130, 30, 70, 70);
    image(flechaabajo, 220, 30, 70, 70);
    image(flechaderecha, 320, 30, 70, 70);
    image(flechaizqcolor, 30, posy1, 70, 70);
    posy1=posy1-velocidad;
    if (posy1 <= 10) {
      posy1=round(random(500, 600));
    }
    image(flechadercolor, 320, posy2, 70, 70);
    posy2=posy2-velocidad;
    if (posy2 <= 10) {
      posy2=round(random(600, 700));
    }
    image(flechaarribacolor, 130, posy3, 70, 70);
    posy3=posy3-velocidad;
    if (posy3 <= 10) {
      posy3=round(random(900, 1000));
    }
    image(flechaabajocolor, 220, posy4, 70, 70);
    posy4=posy4-velocidad;
    if (posy4 <= 10) {
      posy4=round(random(800, 900));
    }
    rect(36, 361, 350, 10);
    image(cabeza1, poscabeza1, 341, 50, 50);
    image(cabeza2, poscabeza2, 341, 50, 50);
    //********************************MEDIO**************************
  } else if (game==3) {
    image(fondo, 0, 0, width, height);
    image(flechaizq, 30, 30, 70, 70);
    image(flechaarri, 130, 30, 70, 70);
    image(flechaabajo, 220, 30, 70, 70);
    image(flechaderecha, 320, 30, 70, 70);
    image(flechaizqcolor, 30, posy1, 70, 70);
    posy1=posy1-(velocidad*2);
    if (posy1 <= 10) {
      posy1=round(random(500, 600));
    }
    image(flechadercolor, 320, posy2, 70, 70);
    posy2=posy2-(velocidad*2);
    if (posy2 <= 10) {
      posy2=round(random(600, 700));
    }
    image(flechaarribacolor, 130, posy3, 70, 70);
    posy3=posy3-(velocidad*2);
    if (posy3 <= 10) {
      posy3=round(random(900, 1000));
    }
    image(flechaabajocolor, 220, posy4, 70, 70);
    posy4=posy4-(velocidad*2);
    if (posy4 <= 10) {
      posy4=round(random(800, 900));
    }
    rect(36, 361, 350, 10);
    image(cabeza1, poscabeza1, 341, 50, 50);
    image(cabeza2, poscabeza2, 341, 50, 50);
    //*******************************DIFICIL************************
  } else if (game==6) {
    image(fondo, 0, 0, width, height);
    image(flechaizq, 30, 30, 70, 70);
    image(flechaarri, 130, 30, 70, 70);
    image(flechaabajo, 220, 30, 70, 70);
    image(flechaderecha, 320, 30, 70, 70);
    image(flechaizqcolor, 30, posy1, 70, 70);
    posy1=posy1-(velocidad*3);
    if (posy1 <= 10) {
      posy1=round(random(500, 600));
    }
    image(flechadercolor, 320, posy2, 70, 70);
    posy2=posy2-(velocidad*3);
    if (posy2 <= 10) {
      posy2=round(random(600, 700));
    }
    image(flechaarribacolor, 130, posy3, 70, 70);
    posy3=posy3-(velocidad*3);
    if (posy3 <= 10) {
      posy3=round(random(900, 1000));
    }
    image(flechaabajocolor, 220, posy4, 70, 70);
    posy4=posy4-(velocidad*3);
    if (posy4 <= 10) {
      posy4=round(random(800, 900));
    }
    rect(36, 361, 350, 10);
    image(cabeza1, poscabeza1, 341, 50, 50);
    image(cabeza2, poscabeza2, 341, 50, 50);
    //**************************************GANASTE*************************
  } else if (game==2) {
    textSize(50);
    background(0);
    text("    Ganaste!!"+"\nClick to Restar", 50, 170, 48);
    //******************************PERDISTE*******************************
  } else if (game==5) {
    background(0);
    text("        Perdiste"+"\n   Click to Restart", 50, 170, 48);
  }
  //*****************************SELECT DIFICULTAD************************
  if (contador==20) {
    game=2;
    contador=0;
  }
  if ((game==4) && (dist(169, 128, mouseX, mouseY) < 30) && (mousePressed)) {
    game=1;
  }
  if ((game==4) && (dist(214, 237, mouseX, mouseY) < 30) && (mousePressed)) {
    game=3;
  }
  if ((game==4) &&(dist(203, 349, mouseX, mouseY) < 30) && (mousePressed)) {
    game=6;
  }
  //**********************************VAS PERDIENDO***************************
  if ((posy1)  < 40) {
    poscabeza2=poscabeza2-velo;
    poscabeza1=poscabeza1-velo;
  }
  if ((posy2)  < 40) {
    poscabeza2=poscabeza2-velo;
    poscabeza1=poscabeza1-velo;
  }
  if ((posy3)  < 40) {
    poscabeza2=poscabeza2-velo;
    poscabeza1=poscabeza1-velo;
  }
  if ((posy4)  < 40) {
    poscabeza2=poscabeza2-velo;
    poscabeza1=poscabeza1-velo;
  }
  if (poscabeza2 <= 50) {
    game=5;
  }
  if (poscabeza1 >= 300) {
    game=2;
  }
  if ((game==2)||(game==4)||(game==5)||(game==0)) {
    poscabeza1=160;
    poscabeza2=205;
  }
}


void keyPressed() {
  if (keyCode==LEFT) {
    if (dist(30, 30, 30, posy1) < 15) {
      poscabeza1=poscabeza1+15;
      poscabeza2=poscabeza2+15;
    } else {
      sonido1.stop();
      sonido1.play();
    }
  }
  if (keyCode==RIGHT) {
    if (dist(320, 30, 320, posy2) < 15) {
      poscabeza1=poscabeza1+15;
      poscabeza2=poscabeza2+15;
    } else {
      sonido1.stop();
      sonido1.play();
    }
  }
  if (keyCode==UP) {
    if (dist(130, 30, 130, posy3) < 15) {
      poscabeza1=poscabeza1+15;
      poscabeza2=poscabeza2+15;
    } else {
      sonido1.stop();
      sonido1.play();
    }
  }
  if (keyCode==DOWN) {
    if (dist(220, 30, 220, posy4) < 15) {
      poscabeza1=poscabeza1+15;
      poscabeza2=poscabeza2+15;
    } else {
      sonido1.stop();
      sonido1.play();
    }
  }
  if (keyCode==LEFT) {
    if (dist(30, 30, 30, posy1) > 20) {
      poscabeza1=poscabeza1-2;
      poscabeza2=poscabeza2-2;
    } else {
      sonido1.stop();
      sonido1.play();
    }
  }
  if (keyCode==RIGHT) {
    if (dist(320, 30, 320, posy2) > 20) {
      poscabeza1=poscabeza1-2;
      poscabeza2=poscabeza2-2;
    } else {
      sonido1.stop();
      sonido1.play();
    }
  }
  if (keyCode==UP) {
    if (dist(130, 30, 130, posy3) < 20) {
      poscabeza1=poscabeza1-2;
      poscabeza2=poscabeza2-2;
    } else {
      sonido1.stop();
      sonido1.play();
    }
  }
  if (keyCode==DOWN) {
    if (dist(220, 30, 220, posy4) > 20) {
      poscabeza1=poscabeza1-2;
      poscabeza2=poscabeza2-2;
    } else {
      sonido1.stop();
      sonido1.play();
    }
  }
}
void mouseClicked() {
  if (game==0) {
    game=4;
  } else if (game==2) {
    game=0;
  } else if (game==5) {
    game=0;
  }
}
