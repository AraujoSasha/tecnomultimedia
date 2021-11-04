
class Juego {
  Animal animal;
  Ladron [] ladron;
  Celda [][] celdas;

  int cantLadrones=3;
  int posXladrones=700;
  int posYladrones;
  int delayTiempo;
  int tiempo;
  float posX, posY, tamCelda;
  int cantidadCeldas=11;

  Juego() {

    this.celdas= new Celda [cantidadCeldas][cantidadCeldas];
    this.tiempo=60;
    this.ladron=new Ladron[cantLadrones];
    this.animal=new Animal();
    PImage celda=loadImage("pasto.jpg");


    for (int i = 0; i < cantidadCeldas; i++) {
      for (int j = 0; j < cantidadCeldas; j++) {
        this.celdas [i][j] = new Celda (celda, i*width/10, j*width/10, width/10);
      }
    }

    for (int i=0; i<cantLadrones; i++) {
      this.ladron [i] = new Ladron(posXladrones, posYladrones);
    }
  }

  void dibujar() {

    for (int i = 0; i < cantidadCeldas; i++) {
      for (int j = 0; j < cantidadCeldas; j++) {
        celdas[i][j].dibujarCeldas();
      }
    }

    for (int i=0; i<cantLadrones; i++) {
      this.ladron[i].dibujar();
      if (dist(animal.posXAnimal+20, animal.posYAnimal+20, ladron[i].posX+30, ladron[i].posY+30)<30) {
        animal.cambiarAnimal();
      }
    }
    
    this.animal.dibujarAnimal();

    delayTiempo=(delayTiempo+1)%60;

    if (delayTiempo==0) {
      this.tiempo=this.tiempo-1;
    }

    textFont(fuente1);
    fill(0);
    textSize(20);
    text("Tiempo"+":"+this.tiempo, 420, 40);

    if (tiempo==50) {
      velocidad=6;
    } else if (tiempo==40) {
      velocidad=7;
    } else if (tiempo==30) {
      velocidad=8;
    } else if (tiempo==20) {
      velocidad=9;
    } else if (tiempo==10) {
      velocidad=10;
    } else if (tiempo==0) {
      
    }
  }

  void teclapresionada() {
    this.animal.teclapresionada();
  }
}

void mouseClicked() {
  if (transparencia==370) {
    pantallas=1;
  }
  if (pantallas==3) {
    pantallas=0;
  }
}
