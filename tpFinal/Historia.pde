class Historia{
  
  PImage img[]=new PImage[31];
  Inicio inicio;
  
  Historia(){
    inicio=new Inicio();
    for (int i=0; i<img.length; i++) {
      img[i]=loadImage( i + ".jpg");
    }
    
  }
  
  void pantalla(int pantallaactual){
    
    if(pantallaactual==0){
      inicio.dibujar();
    }else if (pantallaactual==1){
      image(img[2],width/2,height/2,width,height);
    }else if (pantallaactual==2){
      image(img[3],width/2,height/2,width,height);
    }else if (pantallaactual==3){
      image(img[4],width/2,height/2,width,height);
    }else if (pantallaactual==4){
      image(img[5],width/2,height/2,width,height);
    }
  }
  
}
