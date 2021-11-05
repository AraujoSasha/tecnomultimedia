class Pantalla{
  Final ganaste,perdiste;
  Inicio inicio;
  
  
  Pantalla(){
    inicio=new Inicio();
    ganaste=new Final();
    perdiste=new Final();
  }
  
  
  void dibujarInicio(){
    inicio.dibujar();
  }
  
  void dibujarGane(){
    ganaste.ganaste();
  }
  
  void dibujarPerdi(){
    perdiste.perdiste();
  }
  
}
