float velocidad;

class Ladron {
  PImage [] imagen;
  Animal animal;
  int maximagenes=2;
  int imageindex;
  int delay;
  float posX, posY, tamLadron;


  Ladron(float posX, float posY) {

    imagen=new PImage[maximagenes];
    animal=new Animal();

    for (int i=0; i<imagen.length; i++) {
      imagen[i]=loadImage("ladron"+ i + ".png");
    }

    this.posX=posX;
    this.posY=posY;
    this.tamLadron=60;
    velocidad=5;
  }

  void dibujar() {
    image(imagen[imageindex], this.posX, this.posY, this.tamLadron, this.tamLadron);
    if (delay==0) {
      imageindex=(imageindex+1)%imagen.length;
    }

    delay=(delay+1)%15;
    this.posX=this.posX-velocidad;

    if (this.posX<=-50) {
      this.posX=600;
    }

    if (this.posX==600) {
      this.posY=round(random(50, 300)+tamLadron);
    }
  }
}
