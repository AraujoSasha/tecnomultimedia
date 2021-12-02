class Creditos {

  PFont fuente1, fuente2;
  PImage imagen1, imagen2, imagen3, imagen4, imagen5;
  int y, y2,yanimales, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14;
  int velocidad;
  int reloj, reloj1;
  float tam, tam1, tam2, tam3, tam4, tam5, tam6, tam7;
  float velocidad1, velocidad2;
  int inicio;
  int color1, color2, color3;

  Creditos() {

    fuente1= loadFont("Harrington-48.vlw");
    fuente2= loadFont("TimesNewRomanPS-BoldMT-48.vlw");
    imagen1=loadImage("fondocreditos.jpg");
    imagen2=loadImage("aanimales.png");
    imagen3=loadImage("burro2.png");
    imagen4=loadImage("33.png");
    imagen5=loadImage("Perro.png");
    y=680;
    velocidad=3;
    y2=600;
    y3=1300;
    yanimales=1300;
    y4=800;
    y5=800;
    y6=1300;
    y7=800;
    y8=1300;
    y9=1300;
    y10=1300;
    y11=1000;
    y12=1600;
    y13=1000;
    y14=1900;
    tam=1;
    tam1=1;
    tam2=20;
    tam3=1;
    tam4=20;
    tam5=20;
    tam6=15;
    tam7=200;
    velocidad1=0.3;
    velocidad2=0.2;
    inicio=1;
  }

  void dibujar() {
    background(0);
    //**************************PANTALLA 1************************
    if (inicio==1) {
      image(imagen1, width/2, y2, width, height);
      textFont(fuente1, 48);
      fill(255);
      textAlign(LEFT);
      textSize(51);
      fill(0);
      text(" Los\n Músicos\n De\n Bremen", 20, y, 10);
      textSize(50);
      fill(255);
      text(" Los\n Músicos\n De\n Bremen", 20, y, 10);
      if (y>80) {
        y=y-velocidad;
      }
      if (y2>height/2) {
        y2=y2-velocidad;
      }
      if ((y==80) && (y2==249)) {
        reloj=reloj+1;
      }
      if (reloj==50) {
        y=y-velocidad;
        y2=y2-velocidad;
      }
    }
    //**************************PANTALLA 2************************
    image(imagen2, width/2-80, yanimales, 200, 250);
    textAlign(CENTER);
    textFont(fuente2, 48);
    textSize(tam);
    fill(#1AA031);
    text("Protagonistas\n  Principales", width/2, y4, 10);
    textSize(40);
    text("\nEl Gallo\nEl Gato\nEl Perro\nEl Burro", 450, y3, 10);
    if ((y4>50) && (reloj==50)) {
      y4=y4-velocidad;
    }
    if ((yanimales>350)&&(reloj==50)) {
      yanimales=yanimales-velocidad;
    }
    if ((y3>250) && (reloj==50)) {
      y3=y3-velocidad;
    }
    if ((y3==250) && (y4==50)&&(yanimales==349)) {
      reloj=reloj+1;
    }
    if (reloj==100) {
      y3=y3-velocidad;
      y4=y4-velocidad;
      yanimales=yanimales-velocidad;
    }
    if (y4<=500) {
      if (y4>50) {
        tam=tam+velocidad1;
      }
    }
    //*******************************PANTALLA 3*************************
    textSize(tam1);
    text("Protagonistas\n Secundarios", width/2, y5, 10);
    textSize(tam2);
    text("Los Ladrones", width/2, y6, 10);
    image(imagen4, width/2, y10, 370, 340);
    if ((y10>450) && (reloj==100)) {
      y10=y10-velocidad;
    }
    if ((y5>50) && (reloj==100)) {
      y5=y5-velocidad;
    }
    if ((y6>250) && (reloj==100)) {
      y6=y6-velocidad;
    }
    if ((y5==50) && (y6==250)&& (y10==448)) {
      reloj=reloj+1;
    }
    if (reloj==150) {
      y5=y5-velocidad;
      y6=y6-velocidad;
      y10=y10-velocidad;
    }
    if (y5<=500) {
      if (y5>50)
        tam1=tam1+velocidad1;
    }
    if (y6<=500) {
      if (y6>250) 
        tam2=tam2+velocidad1;
    }
    //**********************************PANTALLA 4**********************
    textSize(tam4);
    text("El Burro", width/2, y8, 10);
    image(imagen3, width/2, y9, 200, 250);
    textSize(tam3);
    text("MÚSICA", width/2, y7, 10);
    if ((y7>50) && (reloj==150)) {
      y7=y7-velocidad;
    }
    if ((y8>250) && (reloj==150)) {
      y8=y8-velocidad;
    }
    if ((y9>300) && (reloj==150)) {
      y9=y9-velocidad;
    }
    if ((y7==50) && (y8==250) && (y9==298)) {
      reloj=reloj+1;
    }
    if (reloj==200) {
      y8=y8-velocidad;
      y9=y9-velocidad;
    }
    if (y7<=500) {
      if (y7>50)
        tam3=tam3+velocidad1;
    }
    if (y8<=500) {
      if (y8>250) 
        tam4=tam4+velocidad1;
    }
    //********************PANTALLA 5****************************
    textSize(tam5);
    text("El Perro", width/2, y11, 10);
    if ((y11>250) && (reloj==200)) {
      y11=y11-velocidad;
    }
    if (y11<=500) {
      if (y11>250)
        tam5=tam5+velocidad1;
    }
    image(imagen5, width/2-20, y12, 200, 250);
    if ((y12>330) && (reloj==200)) {
      y12=y12-velocidad-2;
    }
    if ((y11==250) && (y12==330)) {
      reloj=reloj+1;
    }
    if (reloj==250) {
      y11=y11-velocidad;
      y12=y12-velocidad;
      y7=y7-velocidad;
    }
    //****************************PANTALLA6*************************
    textSize(tam6);
    text("Escritores", width/2, y13, 10);
    if ((y13>70) && (reloj==250)) {
      y13=y13-velocidad;
    }
    if (y13<=500) {
      if (y13>70)
        tam6=tam6+velocidad1;
    }
    textSize(tam7);
    text("LOS HERMANOS\nGRIMM", width/2, y14, 10);
    if ((y14>250) && (reloj==250)) {
      y14=y14-velocidad;
    }
    if (y14<=500) {
      if (y14>250)
        tam7=tam7-(velocidad1*6);
    }
    if ((y13==70) && (y14==250)) {
      reloj=reloj+1;
    }
    if (reloj==350) {
      y13=y13-velocidad;
      y14=y14-velocidad;
    }
  }
}
