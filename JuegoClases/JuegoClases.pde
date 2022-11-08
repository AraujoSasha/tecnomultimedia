controlGame juego;

void setup(){
  size(800,600);
juego = new controlGame();

}



void draw(){
juego.control();
println(estado);
}
