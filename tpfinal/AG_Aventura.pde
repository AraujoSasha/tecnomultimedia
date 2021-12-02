
class Aventura {

  PantallaInicio inicio;
  PantallaGral pantallaGral;
  PantallaDesicion pantallaDesicion;
  Juego juego;
  Inicio iniciojuego;
  Creditos creditos;
  String actividadActual;

  Aventura() {
    this.actividadActual= "pantalla";
    inicio=new PantallaInicio();
    juego=new Juego(this);
    creditos=new Creditos();
    iniciojuego=new Inicio();
  }

  void cambiarActividadActual(String actividad) {
    this.actividadActual=actividad;
  }

  void cambiarAPantallaGeneral(PantallaGral pantallagral) {
    this.actividadActual="pantalla";
    this.pantallaGral=pantallagral;
    this.inicio=null;
    this.pantallaDesicion=null;
  }

  void cambiarAPantallaDesicion(PantallaDesicion pantalladesicion) {
    this.actividadActual="pantalla";
    this.pantallaGral=null;
    this.inicio=null;
    this.pantallaDesicion=pantalladesicion;
  }
  
  void teclapresionada() {
    if (actividadActual=="juegocorriendo") {
      juego.teclapresionada();
    }
  }


  void dibujar() {
    
    if (actividadActual=="juego") {
      iniciojuego.dibujar();
    } else if (actividadActual=="creditos") {
      creditos.dibujar();
    } else if (actividadActual=="juegocorriendo") {
      juego.dibujar();
    } else {
      if (inicio!=null) {
        inicio.dibujar();
      } else if (pantallaGral!=null) {
        pantallaGral.dibujar();
      } else if (pantallaDesicion!=null) {
        pantallaDesicion.dibujar();
      }
    }
  }

  void retomarDespuesDeJuego(boolean ganaste) {
    PantallaGral siguientePantalla;
    if (ganaste) {
      siguientePantalla=new PantallaGral("23.jpg", "creditos");
    } else {
      siguientePantalla=new PantallaGral("24.jpg", "creditos");
    }
    this.cambiarAPantallaGeneral(siguientePantalla);
  }

  void intentarClick() {

    if (actividadActual=="juego") {
      this.cambiarActividadActual("juegocorriendo");
    } else if (actividadActual=="creditos") {
    } else if (actividadActual=="juegocorriendo") {
    } else {
      if (inicio!=null) {
        inicio.intentarClick(this);
      } else if (pantallaGral!=null) {
        pantallaGral.intentarClick(this);
      } else if (pantallaDesicion!=null) {
        pantallaDesicion.intentarClick(this);
      }
    }
  }
}
