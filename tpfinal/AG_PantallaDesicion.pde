class PantallaDesicion{
  
  BotonDesicion boton1,boton2;
  
 PantallaDesicion(String imagen1,String imagen2,PantallaGral pantallaDestino1,PantallaGral pantallaDestino2){
   
   boton1=new BotonDesicion(imagen1,pantallaDestino1,width/2,height-height/4);
   boton2=new BotonDesicion(imagen2,pantallaDestino2,width/2,height/4);
   
 }
 
 void dibujar(){
   boton1.dibujar();
   boton2.dibujar();
   
 }
 
 void intentarClick(Aventura aventura){
    boton1.intentarClick(aventura);
    boton2.intentarClick(aventura);
  }
  
}
