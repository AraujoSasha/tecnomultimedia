int posX=300;
int posY=400;
int ancho=100;
int alto=50;
String texto="Creditos";

String  boton() {
  if (mouseX > posX && mouseX < posX +ancho && mouseY > posY && mouseY < posY+alto) {
    fill(0, 0, 255, 200);
  } else {
    fill(0, 0, 255, 80);
  }
  strokeWeight(1);
  stroke(0);
  rect(posX, posY, ancho, alto);
  textAlign(CORNER);
  fill(255);
  textFont(fuente3);
  textSize(30);
 return texto;
}

void siono() {
  fill(c1);
  strokeWeight(marco1);
  stroke(0, 0, 255);
  rect(0, 0, 700, 250);
  fill(c2);
  strokeWeight(marco2);
  stroke(0, 0, 255);
  rect(0, 245, 700, 250);
}
void mouseMoved() {
  if (mouseX > 0 && mouseX < 700 && mouseY > 0 && mouseY < 250) {
    tam1=720;
    tam2=270;
    c1=color(0, 0, 0, 10);
    marco1=20;
    c3=color(0, 255, 0);
  } else {
    tam1=700;
    tam2=250;
    marco1=10;
    c1=color(0, 0, 0, 150);
    c3=color(0, 255, 0, 80);
  }
  if (mouseX > 0 && mouseX < 700 && mouseY > 250 && mouseY < 500) {
    tam3=720;
    tam4=270;
    c2=c3;
    marco2=20;
    c2=color(0, 0, 0, 10);
    c4=color(255, 0, 0);
  } else {
    tam3=700;
    tam4=250;
    marco2=10;
    c2=color(0, 0, 0, 150);
    c4=color(255, 0, 0, 80);
  }
}

void mouseClicked() {
  if (pantallas[0]==5) {
    if (mouseX > 0 && mouseX < 700 && mouseY > 0 && mouseY < 250) {
      pantallas[0]=pantallas[2]=1;
      pantallas[0]=0;
    }
  }
  if (pantallas[0]==5) {
    if (mouseX > 0 && mouseX < 700 && mouseY > 250 && mouseY < 500) {
      pantallas[0]=pantallas[1]=1;
      pantallas[0]=0;
    }
  }
  if (pantallas[2]==3) {
    if (mouseX > 0 && mouseX < 700 && mouseY > 0 && mouseY < 250) {
      pantallas[2]=pantallas[3]=1;
      pantallas[2]=0;
      pantallas[0]=0;
    }
  }
  if (pantallas[2]==3) {
    if (mouseX > 0 && mouseX < 700 && mouseY > 250 && mouseY < 500) {
      pantallas[2]=pantallas[4]=1;
      pantallas[2]=0;
      pantallas[0]=0;
    }
  }
  if (pantallas[0]==0) {
    if (mouseX > posX && mouseX < posX +ancho && mouseY > posY && mouseY < posY+alto) {
      pantallas[0]=pantallas[1]=2;
      pantallas[0]=0;
    }
  }

  if (pantallas[3]==3) {
    if (mouseX > 0 && mouseX < 700 && mouseY > 0 && mouseY < 250) {
      pantallas[3]=pantallas[6]=1;
      pantallas[0]=0;
      pantallas[3]=0;
    }
  }

  if (pantallas[3]==3) {
    if (mouseX > 0 && mouseX < 700 && mouseY > 250 && mouseY < 500) {
      pantallas[3]=pantallas[5]=1;
      pantallas[0]=0;
      pantallas[3]=0;
    }
  }
  if (pantallas[6]==6) {
    if (mouseX > 0 && mouseX < 700 && mouseY > 0 && mouseY < 250) {
      pantallas[6]=pantallas[7]=1;
      pantallas[0]=0;
      pantallas[3]=0;
      pantallas[6]=0;
    }
  }
  if (pantallas[6]==6) {
    if (mouseX > 0 && mouseX < 700 && mouseY > 250 && mouseY < 500) {
      pantallas[6]=pantallas[8]=1;
      pantallas[0]=0;
      pantallas[3]=0;
      pantallas[6]=0;
    }
  }
  inicio=1;
}
