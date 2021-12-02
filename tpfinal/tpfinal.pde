// https://youtu.be/XG_Wt7c0mds

Aventura aventura;

void setup() {
  size(700, 500);
  imageMode(CENTER);
  aventura=new Aventura();
}

void draw() {
  aventura.dibujar();
}

void mouseClicked(){
  aventura.intentarClick();
}

void keyPressed(){
  aventura.teclapresionada();
}
