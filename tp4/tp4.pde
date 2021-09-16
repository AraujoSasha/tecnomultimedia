// https://youtu.be/ueYcBQm_43I

PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img12, img13, img14, img15;
PImage img16, img17, img18, img19, img20, img21, img22, img23, img24, img25, img26, img27, img28;
PImage img29,img30;
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
  img1=loadImage("1.jpg");
  img2=loadImage("2.jpg");
  img3=loadImage("3.jpg");
  img4=loadImage("4.jpg");
  img5=loadImage("5.jpg");
  img6=loadImage("6.jpg");
  img7=loadImage("7.jpg");
  img8=loadImage("8.jpg");
  img9=loadImage("9.jpg");
  img10=loadImage("10.jpg");
  img12=loadImage("12.jpg");
  img13=loadImage("13.jpg");
  img14=loadImage("14.jpg");
  img15=loadImage("15.jpg");
  img16=loadImage("16.jpg");
  img17=loadImage("17.jpg");
  img18=loadImage("18.jpg");
  img19=loadImage("19.jpg");
  img20=loadImage("20.jpg");
  img21=loadImage("21.jpg");
  img22=loadImage("22.jpg");
  img23=loadImage("23.jpg");
  img24=loadImage("24.jpg");
  img25=loadImage("25.jpg");
  img26=loadImage("26.jpg");
  img27=loadImage("27.jpg");
  img28=loadImage("28.jpg");
  img29=loadImage("29.jpg");
  img30=loadImage("30.jpg");
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
}

void draw() {
  println(pantallas);
  background(200);
  //*************************************************PANTALLAS**********************
  if (pantallas[0]==0) {
    imageMode(CENTER);
    image(img1, width/2, height/2, 700, 500);
    boton();
  }
  if (pantallas[0]==1) {
    image(img2, width/2, height/2, 700, 500);
  }
  if (pantallas[0]==2) {
    image(img3, width/2, height/2, 700, 500);
  }
  if (pantallas[0]==3) {
    image(img4, width/2, height/2, 700, 500);
  }
  if (pantallas[0]==4) {
    image(img5, width/2, height/2, 700, 500);
  }
  if (pantallas[0]==5) {
    image(img6, 350, 380, 700, 250);
    image(img7, 350, 130, 700, 250);
    siono();
  }
  if (pantallas[1]==1) {
    image(img8, width/2, height/2, 700, 500);
  }

  if (pantallas[1]==2) {
    creditos();
  }

  if (pantallas[1]==3) {
    pantallas[1]=pantallas[0];
  }

  if (pantallas[2]==1) {
    image(img9, width/2, height/2, 700, 500);
  }

  if (pantallas[2]==2) {
    image(img10, width/2, height/2, 700, 500);
  }

  if (pantallas[2]==3) {
    image(img12, 350, 380, 700, 250);
    image(img13, 350, 130, 700, 250);
    siono();
  }

  if (pantallas[3]==1) {
    image(img16, width/2, height/2, 700, 500);
  }

  if (pantallas[3]==2) {
    image(img17, width/2, height/2, 700, 500);
  }

  if (pantallas[3]==3) {
    image(img18, 350, 380, 700, 250);
    image(img19, 350, 130, 700, 250);
    siono();
  }

  if (pantallas[4]==1) {
    image(img14, width/2, height/2, 700, 500);
  }

  if (pantallas[4]==2) {
    image(img15, width/2, height/2, 700, 500);
  }

  if (pantallas[4]==3) {
    creditos();
  }

  if (pantallas[4]==4) {
    pantallas[4]=pantallas[3]=1;
  }

  if (pantallas[5]==1) {
    image(img20, width/2, height/2, 700, 500);
  }

  if (pantallas[5]==2) {
    image(img21, width/2, height/2, 700, 500);
  }

  if (pantallas[5]==3) {
    creditos();
  }
  if (pantallas[6]==1) {
    image(img22, width/2, height/2, 700, 500);
  }
  if (pantallas[6]==2) {
    image(img23, width/2, height/2, 700, 500);
  }
  if (pantallas[6]==3) {
    image(img24, width/2, height/2, 700, 500);
  }
  if (pantallas[6]==4) {
    image(img25, width/2, height/2, 700, 500);
  }
  if (pantallas[6]==5) {
    image(img26, width/2, height/2, 700, 500);
  }
  if (pantallas[6]==6) {
    image(img28, 350, 380, 700, 250);
    image(img27, 350, 130, 700, 250);
    siono();
  }
  if (pantallas[7]==1) {
    image(img29, width/2, height/2, 700, 500);
  }
    if (pantallas[7]==2) {
    creditos();
  }
    if (pantallas[8]==1) {
    image(img30, width/2, height/2, 700, 500);
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
