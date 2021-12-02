class PantallaInicio {

  PImage imagenDeFondo;
  BotonAvanzar comenzar;
  BotonCreditos creditos;
  PantallaInicio() {

    imagenDeFondo=loadImage("0.jpg");
    comenzar=new BotonAvanzar(null, 
      new PantallaGral("1.jpg", 
      new PantallaGral("2.jpg", 
      new PantallaGral("3.jpg", 
      new PantallaGral("4.jpg", 
      new PantallaDesicion("5_1.jpg", "5_2.jpg", 
      new PantallaGral("6.jpg", "creditos"), 
      new PantallaGral("7.jpg", 
      new PantallaGral("8.jpg", 
      new PantallaDesicion("9_1.jpg", "9_2.jpg", 
      new PantallaGral("11.jpg", "creditos"), 
      new PantallaGral("12.jpg", 
      new PantallaGral("13.jpg", 
      new PantallaDesicion("14_1.jpg", "14_2.jpg", 
      new PantallaGral("15.jpg", 
      new PantallaGral("16.jpg", "creditos")),
      new PantallaGral("17.jpg", 
      new PantallaGral("18.jpg", 
      new PantallaGral("19.jpg", 
      new PantallaGral("20.jpg", 
      new PantallaGral("21.jpg", "juego")
      ))))))))))))))), null);
    creditos=new BotonCreditos();
  }

  void dibujar() {
    image(imagenDeFondo, width/2, height/2, width, height);
    comenzar.dibujar();
    creditos.dibujar();
  }

  void intentarClick(Aventura aventura) {
    comenzar.intentarClick(aventura);
    creditos.intentarClick(aventura);
  }
}
