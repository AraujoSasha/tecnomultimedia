class Juego {
  int cantidadCeldas=13;
  int tamCeldas=40;
  
  Animal animal;
  Celdas [][] celdas = new Celdas [cantidadCeldas] [cantidadCeldas];

  Juego() {
    this.animal = new Animal();
    for (int i=0; i<cantidadCeldas; i++) {
      for (int j=0; j<cantidadCeldas; j++) {
        this.celdas [i][j] = new Celdas(i*tamCeldas,j*tamCeldas,tamCeldas);
      }
    }
  }

  void dibujar() {
    this.animal.dibujar();
    for (int i=0; i<cantidadCeldas; i++) {
      for (int j=0; j<cantidadCeldas; j++) {
        celdas[i][j].dibujarCeldas();
      }
    }
    this.celdas[0][0].agregarPasto(new Pasto());
    this.celdas[10][7].agregaranimal(new Animal());
  }
}
