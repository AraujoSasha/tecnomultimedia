  String estado;
class controlGame {


  Pantallas pantallas;

  controlGame() {

    pantallas=new Pantallas();
    textSize( 24 );
    textAlign( CENTER, CENTER );
    ellipseMode(RADIUS);
    estado = "pantalla1";
    
  }

  void control() {

    background(120, 20, 20);
    if ( estado.equals("pantalla1") ) {
      pantallas.inicio();
    } else if (estado.equals("pantalla2")) {
      pantallas.juego();
    } else if (estado.equals("pantalla3")) {
      pantallas.perdiste();
    } else if (estado.equals("pantalla4")) {
      pantallas.ganaste();
    }
  }
}

  void mousePressed() {
    if (estado.equals("pantalla1") && dist(mouseX, mouseY, width/2, height/2+100) <= 20) {
      estado= "pantalla2";
    }
  }
