class Celda {
  
  float posX, posY, tamCelda;
  PImage celda;

  Celda(PImage celda,float posX, float posY, float tamCelda) {
    this.celda=celda;
    this.posX=posX;
    this.posY=posY;
    this.tamCelda=tamCelda;
  }

  void dibujarCeldas() {
    fill(255);
    image(this.celda,this.posX,this.posY,this.tamCelda,this.tamCelda);
  } 
}
