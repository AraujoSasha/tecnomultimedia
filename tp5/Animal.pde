int cantVidas;
class Animal {

  PImage burro;
  PImage gato;
  PImage gallo;
  PImage sabueso;
  float posXAnimal, posYAnimal, tamAnimal;
  int cambio;
  int delay;


  Animal() {

    this.burro=loadImage("burro.png");
    this.gato=loadImage("gato.png");
    this.gallo=loadImage("gallo.png");
    this.sabueso=loadImage("sabueso.png");
    this.posXAnimal=60;
    this.posYAnimal=250;
    this.tamAnimal=40;
    this.cambio=0;
    cantVidas=4;
  }

  void dibujarAnimal() {

    if (cambio==0) {
      image(this.burro, this.posXAnimal, this.posYAnimal, this.tamAnimal, this.tamAnimal);
    } else if (cambio==1) {
      image(this.gato, this.posXAnimal, this.posYAnimal, this.tamAnimal, this.tamAnimal);
      cantVidas=3;
    } else if (cambio==2) {
      image(this.gallo, this.posXAnimal, this.posYAnimal, this.tamAnimal, this.tamAnimal);
      cantVidas=2;
    } else if (cambio==3) {
      image(this.sabueso, this.posXAnimal, this.posYAnimal, this.tamAnimal, this.tamAnimal);
      cantVidas=1;
    } else if (cambio==4) {
      cantVidas=0;
      pantallas=3;
    }

    delay=(delay+1)%9;
    fill(0);
    text("Vidas"+":"+cantVidas, 330, 40);
  }

    void cambiarAnimal() {
      if ((delay==0)&& (cambio<5)) {
        cambio=cambio+1;
      }
    }

    void teclapresionada() {
      if ((keyCode==DOWN) && (posYAnimal<500)) {
        posYAnimal+=15;
      }
      if ((keyCode==UP) && (posYAnimal>0)) {
        posYAnimal-=15;
      }
    }
  }
