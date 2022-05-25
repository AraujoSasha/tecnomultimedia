import oscP5.*;

//--------------- Configuracion de Filtro-------------------

float minAmp = 35;
float maxAmp = 70;

float minPitch = 45;
float maxPitch = 86;

//--------------- Configuracion de Filtro-------------------

float pos2 = 1;
float posX, posY, posY2, posX2, endX, endY;
float alto = height/7;
float ancho = width / 12;

// 1 4 8 11

float pos, amp, pitch ;
int  i=0;
int j=0;
float dist = ancho*4;
int cant=12, cant2=7;
boolean antesHabiaSonido = false, stop = false;
int accion;
boolean dibujarRectV= true;


OscP5 osc;
GestorSenial intensidad;
GestorSenial altura;

Grillas grid;
Rect [][] rectV;
Paleta paleta;

void setup() {

  size(384, 490);

  paleta = new Paleta();
  grid = new Grillas(paleta);
  rectV=new Rect[cant][cant2];


  osc = new OscP5(this, 12345);
  intensidad = new GestorSenial( minAmp, maxAmp );
  altura = new GestorSenial( minPitch, maxPitch );


  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant2; j++) {
      rectV[i][j]=new Rect(paleta);
      rectV[i][j].setColor(i);
      rectV[i][j].dibujarV(i*(ancho*4), j*(alto*5));
      // SETEAR LOS COLORES Y DIBUJARLOS UNA VEZ
    }
  }
}

void draw() {

  intensidad.actualizar( amp );
  altura.actualizar( pitch );

  boolean haySonido = intensidad.filtradoNorm() > 0.8;

  if (dibujarRectV) {
    for (int i=0; i<cant; i++) {
     for (int j=0; j<cant2; j++) {
     
     rectV[i][j].setColorVert(i);
     rectV[i][j].dibujarV(i*(ancho*4), j*(alto*5));
     
     // RESETEAR LOS COLORES DE LAS Vert Y VOLVER A DIBUJARLAS
     }
     }
     
   /* while ( i<cant) {
      while ( j<cant2) {

        rectV[i][j].setColorVert(i);
        rectV[i][j].dibujarV(i*(ancho*4), j*(alto*5));

        // RESETEAR LOS COLORES DE LAS Vert Y VOLVER A DIBUJARLAS
        i++;
        j++;
      }
    }
    */
    dibujarRectV=false;
  }
  
  println(dibujarRectV);

  if (haySonido && accion==0 ) {
    grid.dibujarH(posX, posY);
    posY += alto*5;

    if (posY > height) {
      posY = 0;
      posX += dist;
    } else if (posX > width) {
      grid.end();
    } else if ( posX == 96 && posY == height) {
      accion=1;
    }
  }
}
void  oscEvent (OscMessage m) {

  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
  } else if (m.addrPattern().equals("/pitch")) {
    pitch = m.get(0).floatValue();
  }
}

void keyPressed() {

  if (key=='a') {

    dibujarRectV=true;
    println(dibujarRectV);
  }
}
