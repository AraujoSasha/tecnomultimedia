class Pj {
  
  float posX, posY;
  PImage escudo;

  Pj(float posX_, float posY_) {
    posX=posX_;
    posY=posY_;
    escudo= loadImage("4321.png");
  }

  void mostrar() {
    image(escudo, mouseX, height-100, 80, 80);
  }
    void mouseMoved() {
  if (mouseX> 50 && mouseX< width -50) {
    posX=mouseX;
  }
}
}
