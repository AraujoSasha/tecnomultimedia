PImage imagen1, imagen2, imagen3, imagen13, imagen14, imagen15;
PImage imagen4, imagen5, imagen6, imagen7, imagen8, imagen9, imagen10, imagen11, imagen12;
PFont fuente1, fuente2;
float x=500.0, x2 =-500.0, x3=500, x4=-200, x5=500, x6=-100, x7=-200, x8=500,x9=500;
float velocidad=3.0;
float y=400, y2=-100, y3, y4=50, y5=450,y6=-120;
float distancia, distancia2;
int AVANZO;
int fps;



void setup() {
  size (400, 300); 
  imagen1=loadImage ("Zeus.png.png");
  imagen2=loadImage ("Zeus1.jpg");
  imagen3 =loadImage ("Zeus2.png");
  imagen4 =loadImage ("2.png");
  imagen5=loadImage ("3.png");
  imagen6=loadImage("4.png");
  imagen7=loadImage("5.png");
  imagen8=loadImage("6.png");
  imagen9=loadImage("7.png");
  imagen10=loadImage("8.png");
  imagen11=loadImage("9.png");
  imagen12=loadImage("10.png");
  imagen13=loadImage("11.png");
  imagen14=loadImage("12.png");
  imagen15=loadImage("13.png");
  fuente1 = loadFont ("CalifornianFB-Italic-48.vlw");
  fuente2=loadFont("Arial-BoldItalicMT-48.vlw");
  textFont (fuente1, 32);
  AVANZO=0;
}

void draw() {
  background (0); 
  fps=fps+1;
  if (fps==15) {
    fps=0;
  }
  distancia= dist (380, 150, mouseX, mouseY);
  distancia2= dist(20, 150, mouseX, mouseY);
  //**************************PANTALLA INICIAL******************************
  if (AVANZO==0)
  {
    image (imagen2, 0, 0, width, height);
    image (imagen3, x2, 0, 400, 200);
    x2 = x2+ velocidad+velocidad;
    if (x2>=0) {
      x2=0;
    }
    image (imagen1, x, 100, width, height);
    x = x-velocidad;
    if (x<=275) {
      x=275;
    }
  }

  //***************************SEGUNDA PANTALLA****************************
  if (AVANZO==1) {
    image (imagen4, 0, 0, width, height);
    fill(0);
    text ("Acá nació Zeus", 148, y, 10);
    fill(#FAFF00);
    text ("Acá nació Zeus", 150, y, 10);
    y = y - velocidad;
    if (y<=280) {
      y=280;
      noFill();
      stroke(0);
      curve(400, 300, 149, 265, 152, 211, 300, 300);
      curve(400, 300, 150, 265, 153, 211, 300, 300);
      fill(0);
      triangle(150, 206, 150, 215, 157, 211);
    }
  }

  //*************************TERCER PANTALLA*********************************
  if (AVANZO==2) {
    image (imagen5, 0, 0, width, height);
    textMode(CENTER);
    fill(0);
    text("Es hijo del titan Cronos", x3, 244, 10);
    fill(255);
    text("Es hijo del titan Cronos", x3, 240, 10);
    x3=x3-velocidad;
    if (x3<=50) {
      x3=50;
      stroke(255);
      line (117, 206, 177, 152);
      line (175, 153, 117, 206);
      triangle(172, 149, 179, 156, 186, 142);
    }
  }
  //************************CUARTA PANTALLA************************************
  if (AVANZO==3) {
    image (imagen6, 0, 0, width, height);
    fill(255);
    text("Que se come a sus hijos", 55, y2, 10);
    fill(0);
    text("Que se come a sus hijos", 57, y2, 10);
    y2=y2+velocidad;
    if (y2>=40) {
      y2=40;
    }
  }
  //****************************QUINTA PANTALLA********************************
  if (AVANZO==4) {
    image(imagen7, 0, 0, width, height);
    fill(0);
    text("Pero su mama lo logra ocultar", x4, 42, 10);
    fill(255);
    text("Pero su mama lo logra ocultar", x4, 38, 10);
    x4=x4+velocidad+velocidad;
    if (x4>=50) {
      x4=50;
    }
  }
  //******************************SEXTA PANTALLA*******************************
  if (AVANZO==5) {
    image (imagen8, 0, 0, width, height);
    fill(0);
    text("Se cria en una cueva", x5, 248, 10);
    text("  junto a una cabra", x5, 268, 10);
    fill(#00D3C3);
    text("Se cria en una cueva", x5, 245, 10);
    text("  junto a una cabra", x5, 265, 10);
    x5=x5-velocidad;
    if (x5<=115) {
      x5=115;
    }
  }
  //***************************SEPTIMA PANTALLA*******************************
  if (AVANZO==6) {
    image(imagen9, 0, 0, width, height);
    fill(0);
    text("Entrena todos los dias", 62, y3, 10);
    fill(#FAFF00);
    text("Entrena todos los dias", 60, y3, 10);
    y3=y3+velocidad;
    if (y3>=40) {
      y3=40;
    }
  }
  //***************************OCTAVA PANTALLA*********************************
  if (AVANZO==7) {
    image(imagen10, 0, 0, width, height);
    fill(255);
    text("Para poder derrotar", x9, 267, 10);
    text("     a su padre", x9, 290, 10);
    fill(0);
    text("Para poder derrotar", x9, 265, 10);
    text("     a su padre", x9, 288, 10);
    x9=x9-velocidad;
    if (x9<=115) {
      x9=115;
    }
  }
  //****************************NOVENA PANTALLA********************************
  if (AVANZO==8) {
    image(imagen11, 0, 0, width, height);
    fill(0);
    text("Le da una pocion", x, 100, 10);
    x=x-velocidad;
    if (x<=150) {
      x=150;
      noFill();
      stroke(0);
      curve(300, 150, 185, 109, 195, 157, 500, 300);
      curve(300, 150, 186, 109, 196, 158, 500, 300);
      fill(0);
      triangle(197, 153, 189, 159, 199, 159);
    }
  }
  //****************************DECIMA PANTALLA********************************
  if (AVANZO==9) {
    image(imagen12, 0, 0, width, height);
    fill(0);
    text("Y Cronos a sus hijos vomitó", x5, 268, 10);
    fill(255);
    text("Y Cronos a sus hijos vomitó", x5, 265, 10);
    x5=x5-velocidad;
    if (x5<=50) {
      x5=50;
    }
  }
  //******************************DECIMA PRIMER PANTALLA************************
  if (AVANZO==10) {
    image(imagen13, 0, 0, width, height);
    fill(0);
    text("Y Zeus con sus hermanos le pegó", 7, y5, 100);
    fill(#D6F702);
    text("Y Zeus con sus hermanos le pegó", 10, y5, 10);
    y5=y5-velocidad;
    if (y5<=280) {
      y5=280;
    }
  }
  //*************************DECIMA SEGUNDA PANTALLA***************************
  if (AVANZO==11) {
    image(imagen14, 0, 0, width, height);
    fill(0);
    text("El mundo se repartieron", 60, y6, 10);
    fill(255);
    text("El mundo se repartieron", 57, y6, 10);
    y6=y6+velocidad;
    if (y6>=30) {
      y6=30;
    }
    fill(0);
    text ("Hades", x8, 73, 10);
    fill(255);
    text ("Hades", x8, 70, 10);
    x8 = x8-velocidad;
    if (x8<=330) {
      x8=330;
      noFill();
      stroke(0);
      curve(200, 60, 326, 56, 301, 85, 300, 300);
      fill(0);
      triangle(297, 80, 305, 83, 300, 87);
      text("Poseidón", x6, 73, 10);
      fill(255);
      text("Poseidón", x6, 70, 10);
      x6 = x6+ velocidad+velocidad;
      if (x6>=10) {
        x6=10;
        noFill();
        curve(300, 100, 51, 80, 89, 117, 200, 100);
        fill(0);
        triangle(88, 113, 87, 121, 94, 118);
      }
    }
  }
  //***********************DECIMA TERCER PANTALLA******************************
  if (AVANZO==12) {
    image(imagen15, 0, 0, width, height);
    fill(0);
    text("Y Zeus se quedó con el cielo", x7, y4, 10);
    x7=x7+velocidad;
    y4=y4+velocidad;
    if (x7>=23) {
      x7=23;
    }
    if (y4>=267) {
      y4=267;
    }
  }
  if (AVANZO==13) {
    AVANZO=0;
  }
  if (AVANZO<=-1) {
    AVANZO=12;
  }


  //*******************************BOTONES*************************************
  if (distancia <= 20) {
    if (mousePressed)
      if (fps==7)
        AVANZO=AVANZO+1;
  }
  if (distancia2 <=20) {
    if (mousePressed)
      if (fps==7)
        AVANZO=AVANZO-1;
  }
  stroke(0);
  fill (255, 0, 0, 80);
  circle (380, 150, 40);
  circle (20, 150, 40);
  fill(255);
  noStroke();
  rect (370, 146, 17, 10);
  triangle(385, 144, 385, 158, 394, 151);
  rect(15, 146, 17, 10);
  triangle(15, 144, 15, 158, 8, 151);

  println (mouseX);
  println(mouseY);
  // println (AVANZO);
  // println (fps);
}
