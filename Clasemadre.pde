class Madre {
  Pantalla pantalla;
  Boton botoncomenzar, botoninicio, botoncreditos;

  int ID;

  Madre() {
    this.ID=0;
    this.pantalla = new Pantalla();

  }

  void dibujar () {
    this.pantalla.dibujar(this.ID);

  }
  void pressed() {
    this.pantalla.pressed(this.ID);
  }

  void click() {
    this.pantalla.click();
  }
}
