int cantVidas,cambio;
float posYAnimal;
class Animal {

  PImage burro;
  PImage gato;
  PImage gallo;
  PImage sabueso;
  float posXAnimal, tamAnimal;
  int delay;
  boolean perdiste;


  Animal() {

    this.burro=loadImage("burro.png");
    this.gato=loadImage("gato.png");
    this.gallo=loadImage("gallo.png");
    this.sabueso=loadImage("sabueso.png");
    this.posXAnimal=60;
    posYAnimal=250;
    this.tamAnimal=40;
    cambio=0;
    cantVidas=4;
    this.perdiste=false;
  }

  void dibujarAnimal() {
    if (cambio==0) {
      image(this.burro, this.posXAnimal, posYAnimal, this.tamAnimal, this.tamAnimal);
    } else if (cambio==1) {
      image(this.gato, this.posXAnimal, posYAnimal, this.tamAnimal, this.tamAnimal);
      cantVidas=3;
    } else if (cambio==2) {
      image(this.gallo, this.posXAnimal, posYAnimal, this.tamAnimal, this.tamAnimal);
      cantVidas=2;
    } else if (cambio==3) {
      image(this.sabueso, this.posXAnimal, posYAnimal, this.tamAnimal, this.tamAnimal);
      cantVidas=1;
    } else {
      perdiste=true;
    }

    delay=(delay+1)%9;
    fill(0);
    text("Vidas"+":"+cantVidas, 330, 40);
    
    if(perdiste){
      cantVidas=0;
      cambiarsiguientePantalla();
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
    if ((keyCode==DOWN) && (posYAnimal<500)) {
      posYAnimal+=15;
    }
    if ((keyCode==UP) && (posYAnimal>0)) {
      posYAnimal-=15;
    }
  }
}
