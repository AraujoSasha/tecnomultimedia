//  https://youtu.be/q0YjWQ2YSqU

int tam=1;
int cant=0;
int grados=20;
float color1=0;
float color2=random(0, 255);
void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(0);
  translate(250, 250);
  for (int i=-350; i<cant; i++) {
    if (i%2 == 0) {
      fill(255);
    } else {
      fill(color1);
    }
    rotate(radians(grados));

    rect(0, 0, i *tam, i *tam);
  }
}

void mouseClicked() {
  color1=color2;
}

void keyPressed(){
  if(keyCode==ENTER){
   color1=0;
 }
}
