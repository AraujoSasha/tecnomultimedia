class BotonCreditos {

  int posX=width/2-50;
  int posY=400;
  int ancho=100;
  int alto=50;
  PFont fuente;
  BotonCreditos() {
    fuente= loadFont("BellMTItalic-48.vlw");
  }

  void dibujar() {

    if (colisionaConMouse()) {
      fill(0, 0, 255, 200);
    } else {
      fill(0, 0, 255, 80);
    }
    strokeWeight(1);
    stroke(0);
    rect(posX, posY, ancho, alto);
    textAlign(CENTER);
    fill(255);
    textFont(fuente);
    textSize(20);
    text("CREDITOS", width/2, 432, 10);
  }
  
  void clickear(Aventura aventura){
    aventura.cambiarActividadActual("creditos");
  }
  void intentarClick(Aventura aventura){
    if(colisionaConMouse()){
      this.clickear(aventura);
    }
  }
   boolean colisionaConMouse(){
    return mouseX > posX && mouseX < posX +ancho && mouseY > posY && mouseY < posY+alto;
  }
}
