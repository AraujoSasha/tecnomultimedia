
class Paleta {
  
  PImage img;
  ArrayList <String> url;
  int imageRandom;
  int posX;
  int posY;
  float[][] presets;
  
  Paleta() {
    String[] url= {"img0.jpeg", "img1.jpeg", "img2.jpeg", "img3.jpeg"};  //40% de prob que salga la roja
    imageRandom = int(random(url.length));

    img = loadImage(url[imageRandom]);
    presets = new float[2][10];
    for (int i=0; i<10; i++) {
      presets[0][i] = random(img.width);
      presets[1][i] = random(img.height);
    }
  }

  color selectColor() {
    posX = int(random(img.width));
    posY = int(random(img.height));

    return img.get( posX, posY );
  }

  color selectColorPreset(int cual) {
    
    posX = int(presets[0][cual]);
    posY = int(presets[1][cual]);

    return img.get( posX, posY );
  }
}
