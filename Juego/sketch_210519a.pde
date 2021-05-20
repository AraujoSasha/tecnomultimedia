float x, x1;
float y, abajo;
float velocidad;
PFont fuente1;
int lose;
int win;
int fps;
int area, area2;
int puntaje;
int velo1;
float distancia;
color azul = #0300FF, azul1 = #0300FF, blanco=#FFFFFF, azul2 = #0300FF, azul3 = #0300FF, azul4 = #0300FF;
void setup() {
  size(400, 300);
  x=15;
  y=90;
  x1=19;
  velocidad=1.5;
  area=30;
  area2=30;
  fuente1=loadFont("SitkaDisplay-BoldItalic-22.vlw");
  textFont(fuente1, 20);
  lose=0;
  win=0;
}

void draw() { 
  distancia=dist(95, 44, area, area2);
  fps=fps+1;
  if (fps==10) {
    fps=0;
  }
  background(0);
  text("(WASD) PARA MOVERSE\n\n       CLICK TO PLAY", 100, 130);
  //***************************JUEGO******************************
  if (win==1) {
    background(255);
    //*************************BOLITAS***************************
    fill(azul1);
    circle(95, 44, 20);
    fill(azul2);
    circle(200, 86, 20);
    fill(azul3);
    circle(278, 175, 20);
    fill(azul4);
    circle(212, 218, 20);
    //*************************INICIO***********************
    fill(0, 255, 0);
    rect(0, 20, 30, 130);
    fill(0);
    text(" I\nN\n I\nC\n I\nO", 11, 34, 5);
    //***********************JUGADOR********************
    fill(0);
    ellipse(x, y, area, area2);
    //*********************ZONA DE MUERTE******************
    fill(255, 0, 0);
    noStroke();
    fill(255, 0, 0);
    rect(0, 150, 200, 150);
    rect(300, 0, 100, 300);
    rect(0, 0, 400, 20);
    //************************FIN***************************
    fill(0, 255, 0);
    rect(200, 270, 100, 30);
    fill(0);
    text("F  I  N", 225, 291, 20);
    //**********************PUNTAJE******************************
    fill(255);
    text("Puntaje: " + puntaje, 306, 50, 10);
  }
  //****************************PANTALLA PERDISTE***************************
  if (lose==1) {
    x=15;
    y=90;
    background(0);
    fill(255);
    text("            PERDISTE\n\n     Click para Reiniciar", 100, 130);
  }
  //***********************************PANTALLA GANASTE**********************
  if (win==2) {
    puntaje=0;
    x=15;
    y=90;
    background(0);
    text("       FELICIDADES\n\n          GANASTE¡¡\n\n\n     Clic para Reiniciar", 100, 110);
  }
  //**********************************PERDER*****************************
  if ((x>=300) || (y<=20)) {
    lose=1;
  }
  if (y>=150) {
    if (x<=200) {
      lose=1;
    }
  }
  if ((y>=270) && (puntaje<=3)) {
    lose=1;
  }
  //****************************PUNTAJE*********************************
  if ((y<=54) && (y>=34) && (x<=105) && (x>=85) && (azul1!=blanco)) {
    if (fps==5) {
      azul1=blanco;
      puntaje=puntaje+1;
    }
  }
  if ((y<=96) && (y>=76) && (x<=209) && (x>=190) && (azul2!=blanco)) {
    if (fps==5) {
      azul2=blanco;
      puntaje=puntaje+1;
    }
  }
  if ((y>=165) && (y<=185) && (x<=288) && (x>=268) && (azul3!=blanco)) {
    if (fps==5) {
      azul3=blanco;
      puntaje=puntaje+1;
    }
  }
  if ((y>=208) && (y<=228) && (x<=220) && (x>=200) && (azul4!=blanco)) {
    if (fps==5) {
      azul4=blanco;
      puntaje=puntaje+1;
    }
  }
  //*************************GANAR************************
  if ((y>=250) && (x<=300) && (x>=200) && (puntaje>=4)) {
    win=2;
  }
  println(mouseX);
  println(mouseY);
  println(lose);
  println(win);
  //*******************MOVIMIENTO**********************
  if (key==CODED) {
    if (keyCode==RIGHT) {
      x=x+velocidad;;
    } else if (keyCode==LEFT) {
      x=x-velocidad;     
    } else if (keyCode==DOWN) {
      y=y+velocidad;
    } else if (keyCode==UP) {
      y=y-velocidad;
    }
  }
  if (x<=15) {
    x=15;
  }
  if (win==0) {
    azul1=azul;
    azul2=azul;
    azul3=azul;
    azul4=azul;
  }
  if (lose==1) {
    azul1=azul;
    azul2=azul;
    azul3=azul;
    azul4=azul;
  }
  if (win==2) {
    azul1=azul;
    azul2=azul;
    azul3=azul;
    azul4=azul;
  }
}

void mouseClicked() {
  win=1;
  if (lose==1) {
    puntaje=0;
    win=0;
    lose=0;
    x=16;
    y=100;
  }
  if (win==2) {
    win=3;
    lose=0;
    puntaje=0;
  }
}
