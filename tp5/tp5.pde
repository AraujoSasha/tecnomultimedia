Juego juego;
Inicio inicio;
Final Final;
int pantallas;
PFont fuente1;

void setup() {

  size(540, 540);

  fuente1=loadFont("CalistoMT-BoldItalic-48.vlw");
  this.juego=new Juego();
  this.inicio=new Inicio();
  this.Final=new Final();
}

void draw () {
println(cantVidas);
  if (pantallas==0) {
    inicio.dibujar();
  }
  if (pantallas==1) {
    juego.dibujar();
  }
  if (pantallas==2) {
    Final.ganaste();
  }
  if (pantallas==3) {
    Final.perdiste();
    cantVidas=4;
  }
}

void keyPressed() {
  this.juego.teclapresionada();
}
