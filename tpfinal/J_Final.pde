class Final {

  Aventura aventura;

  Final(Aventura aventura) {
    this.aventura=aventura;
  }
  void ganaste() {
    aventura.retomarDespuesDeJuego(true);
  }

  void perdiste() {
    aventura.retomarDespuesDeJuego(false);
  }
}
