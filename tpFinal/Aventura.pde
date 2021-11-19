int pantallaactual;
class Aventura {

  Inicio inicio;
  Historia pantalla;

  Aventura() {

    imageMode(CENTER);
    inicio=new Inicio();
    pantalla=new Historia();
  }

  void dibujar() {
    pantalla.pantalla(pantallaactual);
  }
}

void mouseClicked() {
  pantallaactual+=1;
}
