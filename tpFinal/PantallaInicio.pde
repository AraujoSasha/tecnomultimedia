class Inicio{
  PImage inicio;
  
  
 Inicio(){
   inicio=loadImage("0.jpg");

 }
 
 
 void dibujar(){
   image(inicio,width/2,height/2,width,height);
 }
}
