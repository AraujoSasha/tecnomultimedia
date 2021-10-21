class Pasto{
  PImage imagen;
  int posX, posY, tamCelda;
  
   Pasto(){
    this.imagen=loadImage("pasto.jpg");
  }
  
  void dibujar(){
   image(this.imagen,this.posX, this.posY, this.tamCelda,this.tamCelda); 
  }
}
