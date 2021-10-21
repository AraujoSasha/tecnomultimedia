class Celdas {
  int posX, posY, tamCelda;

  Pasto pasto;
  Animal animal;

  Celdas(int posX, int posY, int tamCelda) {
    this.posX=posX;
    this.posY=posY;
    this.tamCelda=tamCelda;
  }

  void dibujarCeldas() {
    if(pasto !=null)
      pasto.dibujar();
     else if(animal != null)
     animal.dibujar();
  } 
  void agregarPasto(Pasto pasto) {
    this.pasto=pasto;
    this.pasto.posX=this.posX;
    this.pasto.posY=this.posX;
    this.pasto.tamCelda=this.tamCelda;
  }
  void agregaranimal(Animal animal) {
    this.animal=animal;
    this.animal.posX=this.posX;
    this.animal.posY=this.posX;
    this.animal.tamCelda=this.tamCelda;
  }
}
