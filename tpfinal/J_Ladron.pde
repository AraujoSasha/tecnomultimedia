float velocidad;

class Ladron {
  PImage [] imagen;
  int maximagenes=2;
  int imageindex;
  int delay;
  float posX, posY, tamLadron;


  Ladron(float posX, float posY) {

    imagen=new PImage[maximagenes];

    for (int i=0; i<imagen.length; i++) {
      imagen[i]=loadImage("ladron"+ i + ".png");
    }

    this.posX=posX;
    this.posY=posY;
    this.tamLadron=60;
    velocidad=10;
  }

  void dibujar() {
    image(imagen[imageindex], this.posX, this.posY, this.tamLadron, this.tamLadron);
    if (delay==0) {
      imageindex=(imageindex+1)%imagen.length;
    }

    delay=(delay+1)%15;
    this.posX=this.posX-velocidad;

    if (this.posX<=-50) {
      this.posX=750;
    }

    if (this.posX==750) {
      this.posY=round(random(40, 450)+tamLadron);
    }
  }
}
