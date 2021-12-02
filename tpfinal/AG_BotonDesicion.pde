class BotonDesicion {
 
  PantallaGral pantallaDestino;
  PImage imagen;
  int posX, posY;

  BotonDesicion(String imagen, PantallaGral pantallaDestino,int posX,int posY) {
    
    this.imagen=loadImage(imagen);
    this.pantallaDestino=pantallaDestino;
    this.posX=posX;
    this.posY=posY;
  }

  void dibujar() {
    
    color colordefondo;
    int weight;
    if (colisionaConMouse()) {
      colordefondo=color(0, 0, 0, 10);
      weight=20;
    } else {
      weight=10;
      colordefondo=color(0, 0, 0, 150);
    }
    
    image(imagen,posX,posY,width,height/2);
    
    fill(colordefondo);
    strokeWeight(weight);
    stroke(0, 0, 255);
    rect(posX-width/2, posY-height/4, width, height/2);

  }
  
  boolean colisionaConMouse(){
    return mouseX > posX-width/2 && mouseX < posX+width/2 && mouseY > posY-height/4 && mouseY < posY+height/4;
  }
  
  void clickear(Aventura aventura) {
    aventura.cambiarAPantallaGeneral(pantallaDestino);
  }
  
  void intentarClick(Aventura aventura) {
    if (this.colisionaConMouse()) {
      this.clickear(aventura);
    }
  }
  
}
