class Final{
  
 Final(){
   
 }
  void ganaste(){
    background(0);
    textSize(40);
    textFont(fuente1);
    fill(255);
    text("        Ganaste!!!\n\n Ahora los musicos\n tienen adonde vivir",80,90);
    textSize(30);
    text("(Click para reiniciar)",130,410);
  }
  
  void perdiste(){
    background(0);
    textSize(40);
    textFont(fuente1);
    fill(255);
    text("        Perdiste!!!\n\nLos ladrones pudieron\n\n cazar a los músicos",60,90);
    textSize(30);
    text("(Click para reiniciar)",130,410);
  }
  
}
