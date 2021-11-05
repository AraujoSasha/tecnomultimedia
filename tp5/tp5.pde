// ENLACE DEL VIDEO https://youtu.be/m6j8GGGzrM0

Juego juego;
Inicio inicio;
Final Final;
Animal animal;
Pantalla PantallaInicio, PantallaGane, PantallaPerdi;
int pantallas;
PFont fuente1;
boolean gano;

void setup() {

  size(540, 540);

  fuente1=loadFont("CalistoMT-BoldItalic-48.vlw");
  this.animal=new Animal();
  this.juego=new Juego();
  this.inicio=new Inicio();
  this.Final=new Final();
  PantallaInicio=new Pantalla();
  PantallaGane=new Pantalla();
  PantallaPerdi=new Pantalla();
  gano=false;
}

void draw () {
  println(cantVidas);
  if (pantallas==0) {
    PantallaInicio.dibujarInicio();
    tiempo=60;
    velocidad=5;
    posYAnimal=250;
  } else if (pantallas==1) {
    juego.dibujar();
  } else {
    if (gano) {
      PantallaGane.dibujarGane();
    } else {
      PantallaPerdi.dibujarPerdi();
      cantVidas=4;
    }
  }
}
void mousefuepresionado() {
  
  if ((pantallas==0) && (transparencia==370)) {
    cambiarsiguientePantalla();
  }else if (pantallas==1) {

  } else {
    cambiarsiguientePantalla();
  }
}

void cambiarsiguientePantalla() {
  
  if ((pantallas==0) && (transparencia==370)) {
    pantallas++;
  } else if (pantallas==1) {
    pantallas++;
  } else {
    pantallas=0;
  }
}

void keyPressed() {
  this.juego.teclapresionada();
}

void mouseClicked() {
  mousefuepresionado();
}
