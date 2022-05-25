Rect Rect;

class Grillas {

  float alto = height/7;
  float ancho = width / 12;
  Paleta paleta;

  Grillas(Paleta paleta_) {

    paleta = paleta_;
    Rect = new Rect(paleta);
  }

  void dibujar(float posX) {
    for (int i = 0; i <= width; i++) {
      Rect.dibujarH(posX, i*alto);
    }
  }

  void dibujarH(float posX, float posY) {
    Rect.dibujarH(posX, posY);
  }

  void dibujarV(float posX, float posY) {
    Rect.dibujarV(posX, posY);
  }

  void end() {
    Rect.dibujarEnd();
  }
}
