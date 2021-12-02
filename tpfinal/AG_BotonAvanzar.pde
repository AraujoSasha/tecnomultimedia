class BotonAvanzar {

  PantallaGral general;
  PantallaDesicion desicion;
  String actividad;
  PFont fuente;
  
  BotonAvanzar(PantallaDesicion desicion, PantallaGral general, String actividad) {

    this.desicion =desicion;
    this.general=general;
    this.actividad=actividad;
    fuente= loadFont("BellMTItalic-48.vlw");
    
  }

  void clickear(Aventura aventura) {
    if (actividad=="creditos") {
      this.mostrarCreditos(aventura);
    } else if (actividad=="juego") {
      this.mostrarJuego(aventura);
    } else {
      this.cambiarPantalla(aventura);
    }
  }
  
  void intentarClick(Aventura aventura) {
    if (this.colisionaConMouse()) {
      this.clickear(aventura);
    }
  }


  void dibujar() {

    if (this.colisionaConMouse()) {
      fill(0, 0, 255, 200);
    } else {
      fill(0, 0, 255, 80);
    }
    strokeWeight(1);
    stroke(0);
    circle(width-50, height/2, 80); 
    fill(0);
    textSize(50);
    textAlign(CENTER);
    textFont(fuente);
    text(">", width-50, height/2+13, 10);
  }

  void mostrarJuego(Aventura aventura) {
    aventura.cambiarActividadActual("juego");
  }

  void mostrarCreditos(Aventura aventura) {
    aventura.cambiarActividadActual("creditos");
  }

  void cambiarPantalla(Aventura aventura) {
    if(desicion!=null){
      aventura.cambiarAPantallaDesicion(desicion);
    }else{
      aventura.cambiarAPantallaGeneral(general);
    }
  }

  boolean colisionaConMouse() {
    return mouseX > width-90 && mouseX < width-10 && mouseY > height/2-40 && mouseY < height/2+40;
  }
}
