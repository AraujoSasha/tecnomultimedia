int cant=21;
int tam=30;
int tamX=30, tamY=30;
int col1=1, fil1=1;
int col2=18, fil2= 18;
int [][]tabla=new int [cant][cant];


void setup() {
  size(600, 600);
  for (int col=0; col<cant; col++) {
    for (int fil=0; fil<cant; fil++) {
      tabla[col][fil]=0;
    }
  }
  for (int col=0; col<cant; col++) {
    for (int fil=0; fil<cant; fil++) {
      if (random(100) > 95)
        tabla[col][fil]=1;
    }
  }
  for (int col=0; col<cant; col++) {
    for (int fil=0; fil<cant; fil++) {
      if (random(100) > 95)
        tabla[col][fil]=2;
    }
  }
  tabla[col1][fil1]=3;
  tabla[col2][fil2]=4;
}


void draw() {
  background(200);
  for (int col=0; col<cant; col++) {
    for (int fil=0; fil<cant; fil++) {
      if (tabla[col][fil] == 0) {
        fill(0);
      } else if (tabla[col][fil] == 4) {
        fill(0, 0, 255);
      } else if (tabla[col][fil] == 1) {
        fill(255, 0, 0);
      } else if (tabla[col][fil] == 2) {
        fill(255, 255, 0);
      } else {
        fill(255);
      }
      rect(col*tamX, fil*tamY, tam, tam);
    }
  }
}

void keyPressed() {
  if (keyCode==RIGHT) {
    if (tabla[col1+1][fil1] != 1 && col1+1 != cant-1) {
      if (tabla[col1+1][fil1] != 4) {
        tabla[col1][fil1]=0;
        tabla[col1+1][fil1]=3;
        col1 = col1 +1;
      }
    }
  } else if (keyCode==LEFT) {
    if (col1>0) {
      if (tabla[col1-1][fil1] != 1) {
        if (tabla[col1-1][fil1] != 4) {
          tabla[col1][fil1]=0;
          tabla[col1-1][fil1]=3;
          col1 = col1 -1;
        }
      }
    }
  } else if (keyCode==UP) {
    if (fil1>0) {
      if (tabla[col1][fil1-1] != 1) {
        if (tabla[col1][fil1-1] != 4) {
          tabla[col1][fil1]=0;
          tabla[col1][fil1-1]=3;
          fil1 = fil1 -1;
        }
      }
    }
  } else   if (keyCode==DOWN) {
    if (tabla[col1][fil1+1] != 1  && fil1+1 != cant-1) {
      if (tabla[col1][fil1+1] != 4) {
        tabla[col1][fil1]=0;
        tabla[col1][fil1+1]=3;
        fil1 = fil1 +1;
      }
    }
  }
  if (key=='d'||key=='D') {
    if (tabla[col2+1][fil2] != 1 && col2+1 != cant-1) {
      if (tabla[col2+1][fil2] != 3) {
        tabla[col2][fil2]=0;
        tabla[col2+1][fil2]=4;
        col2 = col2 +1;
      }
    }
  } else if (key=='a'||key=='A') {
    if (col2>0) {
      if (tabla[col2-1][fil2] != 1) {
        if (tabla[col2-1][fil2] != 3) {
          tabla[col2][fil2]=0;
          tabla[col2-1][fil2]=4;
          col2 = col2 -1;
        }
      }
    }
  } else if (key=='w'||key=='W') {
    if (fil2>0) {
      if (tabla[col2][fil2-1] != 1) {
        if (tabla[col2][fil2-1] != 3) {
          tabla[col2][fil2]=0;
          tabla[col2][fil2-1]=4;
          fil2 = fil2 -1;
        }
      }
    }
  } else if (key=='s'||key=='S') {
    if (tabla[col2][fil2+1] != 1 && fil2+1 != cant-1) {
      if (tabla[col2][fil2+1] != 3) {
        tabla[col2][fil2]=0;
        tabla[col2][fil2+1]=4;
        fil2 = fil2 +1;
      }
    }
  }
}
