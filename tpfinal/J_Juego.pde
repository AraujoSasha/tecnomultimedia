int tiempo;
class Juego {


  Animal animal;
  Ladron [] ladron;
  Celda [][] celdas;

  PFont fuente1;
  int cantLadrones=3;
  int posXladrones=700;
  int posYladrones;
  int delayTiempo;
  float posX, posY, tamCelda;
  int cantidadCeldas=11;
  PImage notas;
  boolean gano;
  Final finales;

  Juego(Aventura aventura) {

    fuente1=loadFont("BernardMT-Condensed-48.vlw");
    finales=new Final(aventura);
    this.celdas= new Celda [cantidadCeldas][cantidadCeldas];
    tiempo=60;
    this.ladron=new Ladron[cantLadrones];
    this.animal=new Animal(this);
    PImage celda=loadImage("pasto.jpg");
    notas=loadImage("notas.png");


    for (int i = 0; i < cantidadCeldas; i++) {
      for (int j = 0; j < cantidadCeldas; j++) {
        this.celdas [i][j] = new Celda (celda, i*width/10, j*width/10, width/10);
      }
    }

    for (int i=0; i<cantLadrones; i++) {
      this.ladron [i] = new Ladron(posXladrones, posYladrones);
    }
  }

  void perdi() {
    finales.perdiste();
  }

  void dibujar() {
    for (int i = 0; i < cantidadCeldas; i++) {
      for (int j = 0; j < cantidadCeldas; j++) {
        celdas[i][j].dibujarCeldas();
      }
    }

    for (int i=0; i<cantLadrones; i++) {
      this.ladron[i].dibujar();
      if (dist(animal.posXAnimal+20, posYAnimal+20, ladron[i].posX+30, ladron[i].posY+30)<50) {
        animal.cambiarAnimal();
      }
    }

    this.animal.dibujarAnimal();

    delayTiempo=(delayTiempo+1)%60;

    if (delayTiempo==0) {
      tiempo=tiempo-1;
    }

    image(notas, width/2, 50, width, 90);
    fill(0);
    textFont(fuente1);
    textSize(19);
    text("Tiempo"+":"+tiempo, 640, 33);
    noFill();
    strokeWeight(10); 
    rect(0, 0, width, height);

    if (tiempo==50) {
      velocidad=13;
    } else if (tiempo==40) {
      velocidad=14;
    } else if (tiempo==30) {
      velocidad=15;
    } else if (tiempo==20) {
      velocidad=16;
    } else if (tiempo==10) {
      velocidad=17;
    } else if (tiempo==0) {
      gano=true;
      finales.ganaste();
    }
  }

  void teclapresionada() {
    this.animal.teclapresionada();
  }
}
