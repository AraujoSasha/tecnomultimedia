import processing.sound.*;
SoundFile navedes, bala, ambiente;

PImage fondo, nave, bala1, enemigoder1, enemigoder2, enemigoder3;
PImage flechas, enter;
PFont fuente1, fuente2;

int game=0;

int posX1 = round(random(50, 300));
int posX2 = round(random(50, 300));
int posX3 = round(random(50, 300));

int enemigo1Visible = 0;
int enemigo2Visible = 0;
int enemigo3Visible = 0;

int anchoRect1 = 70;
int altoRect1 = 50;
int anchoRect2 = 70;
int altoRect2 = 50;
int anchoRect3 = 70;
int altoRect3 = 50;
int direccion1 = 1;
int velocidad1 = floor(random(2, 2));// 3.6 => 3, 3.1 => 3
int direccion2 = 1;
int velocidad2 = ceil(random(2, 2));// 3.6 => 4, 3.1 => 4
int direccion3 = 1;
int velocidad3 = round(random(2, 2));// 3.6 => 4, 5.2 => 5 
int velocidad4 = 7;
int posYen1=0;
int posYen2=50;
int posYen3=100;
int recarga;
int recarga2;
float alturarecarga=0, alturarecarga2=0;
float velocidadrec=0.27;

int posXCanon = 200;
int altoCanon = 70;
int anchoCanon = 50;

int tamBala = 17;
int posXBala;
int posYBala = 200;

boolean balaSeHaDisparado = false;
void setup()
{
  fuente1=loadFont("BodoniMTCondensed-Italic-48.vlw");
  fuente2=loadFont("BookmanOldStyle-Bold-48.vlw");
  fondo=loadImage("espacio.png");
  nave=loadImage("nave.png");
  bala1=loadImage("bala.png");
  enemigoder1=loadImage("enemigo2.png");
  enemigoder2=loadImage("enemigo2.png");
  enemigoder3=loadImage("enemigo2.png");
  flechas=loadImage("flechas.png");
  enter=loadImage("enter.png");
  size(400, 400);
  posYBala = height - altoCanon + (anchoCanon / 2)+40;
  navedes = new SoundFile(this, "pop.mp3");
  bala = new SoundFile(this, "bala.wav");
  ambiente = new SoundFile(this, "ambiente.mp3");
  ambiente.loop();
  posXBala = posXCanon + 17;
}

void draw()
{
  if (game==0) {
    background(200);
    image(fondo, 0, 0, width, height);
    textFont(fuente1, 48);
    fill(212, 175, 55);
    textSize(50);
    text("MATAR EXTRATERRESTRES\n\n  (Click para ir al tutorial)", 10, 170, 48);
  }
  if (game==1) {
    background(200);
    image(fondo, 0, 0, width, height);
    image(flechas, 50, 80, 180, 180);
    image(enter, 280, 155, 65, 65);
    textSize(44);
    text("Movimiento", 70, 130, 40);
    text("Disparar", 260, 130, 40);
    textSize(50);
    fill(#111DF0);
    text("Enter para Jugar", 90, 40, 40);
    fill(0, 255, 0);
    rect(130, 360, 10, alturarecarga2);
    fill(255);
    rect(290, 260, 10, 100);
    textSize(30);
    text("RECARGANDO", 90, 390, 48);
    text("CARGADO", 260, 390, 48);
    recarga2++;
    if (recarga2==120) {
      recarga2=0;
    }
    if (recarga2>0) {
      alturarecarga2=alturarecarga2-(velocidadrec*3);
    } else {
      alturarecarga2=0;
    }
  }
  if (game==2) {
    if (recarga==400) {
      recarga=0;
    }
    background(200);
    image(fondo, 0, 0, width, height);
    fill(255);
    rect(350, 260, 10, 100);
    fill(0, 255, 0);
    rect(350, 360, 10, alturarecarga);
    if ((recarga>0) && (posYBala<370)) {
      alturarecarga=alturarecarga -velocidadrec;
    } else {
      alturarecarga=0;
    }
    posX1 = posX1 + (velocidad1 * direccion1);
    posX2 = posX2 + (velocidad2 * direccion2);
    posX3 = posX3 + (velocidad3 * direccion3);

    if (enemigo1Visible==0) {
      image(enemigoder1, posX1, posYen1, anchoRect1, altoRect1);
    }

    if (enemigo2Visible==0) {
      image(enemigoder2, posX2, posYen2, anchoRect2, altoRect2);
    }

    if (enemigo3Visible==0) {
      image(enemigoder3, posX3, posYen3, anchoRect3, altoRect3);
    }

    //Rect 1
    if (posX1 >= width - anchoRect1) {
      direccion1 = -1;
    }
    if (posX1 <= 0) { 
      direccion1 = 1;
    }

    //Rect 2
    if (posX2 >= width - anchoRect2) {
      direccion2 = -1;
    }
    if (posX2 <= 0) {
      direccion2 = 1;
    }

    //Rect 3
    if (posX3 >= width - anchoRect3) {
      direccion3 = -1;
    }
    if (posX3 <= 0) {
      direccion3 = 1;
    }

    //Bala
    if (balaSeHaDisparado) {
      image(bala1, posXBala, posYBala, tamBala, tamBala);
      posYBala--;
    }
    if (dist(posXBala, posYBala, posX1 + anchoRect1/2, 0 + altoRect1/2) < tamBala) {
      balaSeHaDisparado = false;
      enemigo1Visible = 1;
      posYBala = height - altoCanon + (anchoCanon / 2)+40;
      posXBala = posXCanon + 17;
      navedes.stop();
      navedes.play();
    }

    if (dist(posXBala, posYBala, posX2 + anchoRect2/2, 50 + altoRect2/2) < tamBala) {
      balaSeHaDisparado = false;
      enemigo2Visible = 1;
      posYBala = height - altoCanon + (anchoCanon / 2)+40;
      posXBala = posXCanon + 17;
      navedes.stop();
      navedes.play();
    }

    if (dist(posXBala, posYBala, posX3 + anchoRect3/2, 100 + altoRect3/2) < tamBala) {
      balaSeHaDisparado = false;
      enemigo3Visible = 1;
      posYBala = height - altoCanon + (anchoCanon / 2)+40;
      posXBala = posXCanon + 17;
      navedes.stop();
      navedes.play();
    }


    //Cañon
    image(nave, posXCanon, height - (altoCanon-20), anchoCanon, altoCanon);
    if ((posYBala<=0)) {
      balaSeHaDisparado=false;
      posYBala = height - altoCanon + (anchoCanon / 2)+40;
      posXBala = posXCanon + 17;
    }
    if (posYBala==395) {
      bala.stop();
      bala.play();
    }
    if (posYBala<390) {
      recarga++;
    }
    if ((enemigo1Visible==1) && (enemigo2Visible==1) && (enemigo3Visible==1) ) {
      game=3;
    }
    if (enemigo1Visible==1) {
      posYen1=-100;
    }
    if (enemigo2Visible==1) {
      posYen2=-100;
    }
    if (enemigo3Visible==1) {
      posYen3=-100;
    }
    if (enemigo1Visible==0) {
      posYen1=0;
    }
    if (enemigo2Visible==0) {
      posYen2=50;
    }
    if (enemigo3Visible==0) {
      posYen3=100;
    }
  }
  if (game==3) {
    background(200);
    image(fondo, 0, 0, width, height);
    textSize(50);
    text("         GANASTE\n Click para Resetear", 50, 170, 48);
    enemigo1Visible=0;
    enemigo2Visible=0;
    enemigo3Visible=0;
  }
}  
void mouseClicked() {
  if (game==0) {
    game=1;
  } else if (game==3) {
    game=0;
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    posXCanon= posXCanon - (velocidad4/2); //posXCanon = posXCanon - 5
  }
  if (keyCode == RIGHT) {
    posXCanon= posXCanon + (velocidad4/2); //posXCanon = posXCanon + 5
  }

  if ((keyCode == ENTER)&&(alturarecarga==0)) {
    balaSeHaDisparado = true;
  }
  if (keyCode==ENTER) {
    if (game==1) {
      game=2;
    }
  }
}
