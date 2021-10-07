//https://youtu.be/wQ1KAB2d050

PImage [] img=new PImage[31];
PFont fuente3;
color c1= color(0, 0, 0, 150), c2= color(0, 0, 0, 150);
color c3= color(0, 255, 0, 80), c4=color(255, 0, 0, 80);
int marco1, marco2;
int tam1, tam2, tam3, tam4;
int pantalla=0;
int cant=9;
int [] pantallas=new int[cant];
int tamtext2=100;
int tamtext1=40;

void setup() {
  size(700, 500);
  fuente1= loadFont("Harrington-48.vlw");
  fuente2= loadFont("TimesNewRomanPS-BoldMT-48.vlw");
  fuente3= loadFont("BellMTItalic-48.vlw");
  imagen1=loadImage("11.jpg");
  imagen2=loadImage("22.png");
  imagen3=loadImage("Burro.png");
  imagen4=loadImage("33.png");
  imagen5=loadImage("Perro.png");
  marco1=10;
  marco2=10;
  tam1=700;
  tam2=250;
  tam3=700;
  tam4=250;
  imageMode(CENTER);
  for (int i=0; i<cant; i++) {
    pantallas[i]=0;
  }
  for(int i=0; i<img.length;i++){
   img[i]=loadImage( i + ".jpg");
  }
}

void draw() {
  background(200);
  //*************************************************PANTALLAS**********************
  if (pantallas[0]==0) {
    imageMode(CENTER);
    image(img[1], width/2, height/2, 700, 500);
    text(boton(), posX+3, posY+33);
  }
  if (pantallas[0]==1) {
    image(img[2], width/2, height/2, 700, 500);
  }
  if (pantallas[0]==2) {
    image(img[3], width/2, height/2, 700, 500);
  }
  if (pantallas[0]==3) {
    image(img[4], width/2, height/2, 700, 500);
  }
  if (pantallas[0]==4) {
    image(img[5], width/2, height/2, 700, 500);
  }
  if (pantallas[0]==5) {
    image(img[6], 350, 380, 700, 250);
    image(img[7], 350, 130, 700, 250);
    siono();
  }
  if (pantallas[1]==1) {
    image(img[8], width/2, height/2, 700, 500);
  }

  if (pantallas[1]==2) {
    creditos();
  }

  if (pantallas[1]==3) {
    pantallas[1]=pantallas[0];
  }

  if (pantallas[2]==1) {
    image(img[9], width/2, height/2, 700, 500);
  }

  if (pantallas[2]==2) {
    image(img[10], width/2, height/2, 700, 500);
  }

  if (pantallas[2]==3) {
    image(img[12], 350, 380, 700, 250);
    image(img[13], 350, 130, 700, 250);
    siono();
  }

  if (pantallas[3]==1) {
    image(img[16], width/2, height/2, 700, 500);
  }

  if (pantallas[3]==2) {
    image(img[17], width/2, height/2, 700, 500);
  }

  if (pantallas[3]==3) {
    image(img[18], 350, 380, 700, 250);
    image(img[19], 350, 130, 700, 250);
    siono();
  }

  if (pantallas[4]==1) {
    image(img[14], width/2, height/2, 700, 500);
  }

  if (pantallas[4]==2) {
    image(img[15], width/2, height/2, 700, 500);
  }

  if (pantallas[4]==3) {
    creditos();
  }

  if (pantallas[4]==4) {
    pantallas[4]=pantallas[3]=1;
  }

  if (pantallas[5]==1) {
    image(img[20], width/2, height/2, 700, 500);
  }

  if (pantallas[5]==2) {
    image(img[21], width/2, height/2, 700, 500);
  }

  if (pantallas[5]==3) {
    creditos();
  }
  if (pantallas[6]==1) {
    image(img[22], width/2, height/2, 700, 500);
  }
  if (pantallas[6]==2) {
    image(img[23], width/2, height/2, 700, 500);
  }
  if (pantallas[6]==3) {
    image(img[24], width/2, height/2, 700, 500);
  }
  if (pantallas[6]==4) {
    image(img[25], width/2, height/2, 700, 500);
  }
  if (pantallas[6]==5) {
    image(img[26], width/2, height/2, 700, 500);
  }
  if (pantallas[6]==6) {
    image(img[28], 350, 380, 700, 250);
    image(img[27], 350, 130, 700, 250);
    siono();
  }
  if (pantallas[7]==1) {
    image(img[29], width/2, height/2, 700, 500);
  }
    if (pantallas[7]==2) {
    creditos();
  }
    if (pantallas[8]==1) {
    image(img[30], width/2, height/2, 700, 500);
  }
      if (pantallas[8]==2) {
    creditos();
  }

  if (pantallas[2]>0) {
    pantallas[0]=0;
  }

  if (pantallas[3]>0) {
    pantallas[0]=0;
  }

  if (pantallas[4]>0) {
    pantallas[0]=0;
  }
  if (pantallas[6]>0) {
    pantallas[0]=0;
  }
    if (pantallas[7]>0) {
    pantallas[0]=0;
  }
}

void keyPressed() {
  if (keyCode==RIGHT) {
    if ((pantallas[0]<5) && (pantallas[1] < 1)) {
      pantallas[0]=pantallas[0]+1;
    }
    if ((pantallas[1]>0) && (pantallas[0] < 1) && (pantallas[1] <2)) {
      pantallas[1]=pantallas[1]+1;
    }
    if ((pantallas[2]>0) && (pantallas[2]<3)) {
      pantallas[2]=pantallas[2]+1;
    }
    if ((pantallas[3]>0) && (pantallas[3]<3)) {
      pantallas[3]=pantallas[3]+1;
    }
    if ((pantallas[4]>0) && (pantallas[4]<3)) {
      pantallas[4]=pantallas[4]+1;
    }
    if ((pantallas[5]>0) && (pantallas[5]<3)) {
      pantallas[5]=pantallas[5]+1;
    }
    if ((pantallas[6]>0) && (pantallas[6]<6)) {
      pantallas[6]=pantallas[6]+1;
    }
    if ((pantallas[7]>0) && (pantallas[7]<2)) {
      pantallas[7]=pantallas[7]+1;
    }
        if ((pantallas[8]>0) && (pantallas[7]<2)) {
      pantallas[8]=pantallas[8]+1;
    }
  }
}
