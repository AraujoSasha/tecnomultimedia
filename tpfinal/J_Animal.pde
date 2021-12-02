int cantvidas, cambio;
float posYAnimal;
class Animal {


  PFont fuente1;
  PImage burro;
  PImage gato;
  PImage gallo;
  PImage sabueso;
  float posXAnimal, tamAnimal;
  int delay;
  boolean perdiste;
  Juego juego;

  Animal(Juego juego) {


    fuente1=loadFont("BernardMT-Condensed-48.vlw");
    this.juego=juego;
    this.burro=loadImage("burro.png");
    this.gato=loadImage("gato.png");
    this.gallo=loadImage("gallo.png");
    this.sabueso=loadImage("sabueso.png");
    this.posXAnimal=60;
    posYAnimal=250;
    this.tamAnimal=40;
    cambio=0;
    cantvidas=4;
    this.perdiste=false;
  }

  void dibujarAnimal() {
    if (cambio==0) {
      image(this.burro, this.posXAnimal, posYAnimal, this.tamAnimal, this.tamAnimal);
    } else if (cambio==1) {
      image(this.gato, this.posXAnimal, posYAnimal, this.tamAnimal, this.tamAnimal);
      cantvidas=3;
    } else if (cambio==2) {
      image(this.gallo, this.posXAnimal, posYAnimal, this.tamAnimal, this.tamAnimal);
      cantvidas=2;
    } else if (cambio==3) {
      image(this.sabueso, this.posXAnimal, posYAnimal, this.tamAnimal, this.tamAnimal);
      cantvidas=1;
    } else {
      juego.perdi();
      perdiste=true;
    }

    delay=(delay+1)%9;

    fill(0);
    textFont(fuente1);
    textSize(19);
    text("Vidas"+":"+cantvidas, 640, 60);

    if (perdiste) {
      cantvidas=0;
      perdiste=false;
      cambio=0;
    }
  }

  void cambiarAnimal() {

    if ((delay==0)&& (cambio<5)) {
      cambio=cambio+1;
    }
  }

  void teclapresionada() {
    if ((keyCode==DOWN) && (posYAnimal<490)) {
      posYAnimal+=15;
    }
    if ((keyCode==UP) && (posYAnimal>100)) {
      posYAnimal-=15;
    }
  }
}
