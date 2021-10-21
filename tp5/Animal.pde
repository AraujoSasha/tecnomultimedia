class Animal{
  PImage imagen;
  int posX, posY, tamCelda;
  
   Animal(){
    imagen=loadImage("burro.png");
  }
  
  void dibujar(){
    image(this.imagen,this.posX, this.posY, this.tamCelda,this.tamCelda);
  }
  
}
