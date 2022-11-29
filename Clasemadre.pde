class Madre {

  Pantalla pantalla;
  Boton comenzar, inicio, creditoss;

  int ID;

  Madre() {
    this.comenzar = new Boton (this, width/3+25, height-135, 160, 30, width/3+55, height-115, "comenzar");
    this.inicio  = new Boton (this, 20, 20, 80, 30, 32, 40, "inicio");
    this.creditoss  = new Boton (this, 470, 20, 110, 30, 480, 40, "creditos");
    this.ID=0;
    this.pantalla = new Pantalla(this.comenzar, this.inicio, this.creditoss);
  }



  void dibujar () {
    this.pantalla.dibujar(this.ID);
    this.comenzar.pressed();
    this.inicio.pressed();
    this.creditoss.pressed();
  }
  void pressed() {
    this.pantalla.pressed();
  }

  void click() {
    this.pantalla.click();
  }
}
