int transparencia;

class Inicio {
  PImage musicos;
  PImage ladrones;
  int xtexto1;
  int ytexto1;
  int imagen1X;
  int imagen2X;

  int xtexto2;
  int ytexto2;

  int xtexto3;
  int ytexto3;
  int tamfuente;

  Inicio() {
    musicos=loadImage("animales.png");
    ladrones=loadImage("ladron2.png");
    xtexto1=150;
    ytexto1=600;
    imagen1X=-300;
    imagen2X=750;
    xtexto2=310;
    ytexto2=-100;
    xtexto3=510;
    ytexto3=600;
    tamfuente=70;
  }

  void dibujar() {
    background(0);
    textSize(tamfuente);
    fill(255);
    text("Músicos", xtexto1, ytexto1);
    text("Vs", xtexto2, ytexto2);
    text("Cazadores", xtexto3, ytexto3);
    textSize(30);
    fill(255, 255, 255, transparencia);
    text("Tú seras los Músicos de Bremen \n\n\n\nDeberas esquivar a los Ladrones \n        que intentan cazarte         ", 350, height/2-80);
    image(musicos, imagen1X, height/2-10, 250, 70);
    image(ladrones, imagen2X, height/2+150, 70, 70);
    text("(Click para empezar)",350,470);
    if (ytexto1>100) {
      ytexto1=ytexto1-5;
    }
    if (ytexto2<100) {
      ytexto2=ytexto2+2;
    }
    if (ytexto3>100) {
      ytexto3=ytexto3-5;
    }
    if ((ytexto3==100) && (transparencia<600)&& (imagen1X<330)&& (imagen2X>230)) {
      transparencia=transparencia+7;
      imagen1X=imagen1X+8;
      imagen2X=imagen2X-5;
    }
  }
}
