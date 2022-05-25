
class Rect {
  float alto = height/7;
  float ancho = width / 12;
  float distancia = 15;
  float borderStroke = 10;
  color elColor;

  Paleta palette;

  Rect(Paleta paleta) {
    palette = paleta;
  }

  void setColor(float posX) {
    if (posX % 7 == 2) {
      elColor = palette.selectColorPreset(5);
    } else if ( posX % 7 == 4 ) {
      elColor = palette.selectColorPreset(2);
    } else {
      elColor = palette.selectColor();
    }
  }

  void setColorVert(float posX) {
    if (posX % 7 == 3) {
      elColor = palette.selectColorPreset(5);
    } else if ( posX % 7 == 1 ) {
      elColor = palette.selectColorPreset(2);
    }
  }

  void dibujarV(float posX, float posY) {
    setColor(posX); //voler a llamarla
    //SEPARAR SETEO DE COLOR DEL DIBUJO
    fill(elColor);
    noStroke();
    rect(posX, posY, ancho, alto);
  }

  void dibujarH(float posX, float posY) {
    push();
    noStroke();
    fill(palette.selectColor());
    rect(posX, posY, ancho, alto / 7);
    rect(posX, posY + (alto / 7 + distancia), ancho, alto / 7);
    rect(posX, posY + (alto / 7 + distancia) * 2, ancho, alto / 7);
    pop();
  }

  void dibujarEnd() {
    push();
    noStroke();
    fill(palette.selectColorPreset(5));
    rect(0, 0, width, borderStroke);//Top
    rect(width-borderStroke, 0, borderStroke, height); // Right
    rect(0, height-borderStroke, width, borderStroke); // Bottom
    rect(0, 0, borderStroke, height); // Left
    pop();
  }
}
