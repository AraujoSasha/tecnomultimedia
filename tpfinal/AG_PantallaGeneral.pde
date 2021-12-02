class PantallaGral {

  PImage imagen;
  BotonAvanzar botonAvanzar;


  PantallaGral(String nombredeimagen,PantallaDesicion desicion) {
    botonAvanzar=new BotonAvanzar(desicion,null,null);
    imagen=loadImage(nombredeimagen);
  }
  PantallaGral(String nombredeimagen, String actividad) {
    botonAvanzar=new BotonAvanzar(null,null,actividad);
    imagen=loadImage(nombredeimagen);
  }
  PantallaGral(String nombredeimagen, PantallaGral general) {
    botonAvanzar=new BotonAvanzar(null,general,null);
    imagen=loadImage(nombredeimagen);
  }
  
  

  void dibujar() {
    
    image(imagen, width/2, height/2, width, height);
    botonAvanzar.dibujar();
  }
  
  void intentarClick(Aventura aventura){
    botonAvanzar.intentarClick(aventura);
  }
}
