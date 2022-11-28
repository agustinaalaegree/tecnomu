class Madre {
  Pantalla pantalla;
  Boton comenzar;
  
  int ID;

  Madre() {
    this.comenzar = new Boton (this, width/3+25, height-135, 160, 30, "comenzar");
    this.ID=0;
    this.pantalla = new Pantalla(this.comenzar);
  }



  void dibujar () {
    this.pantalla.dibujar(this.ID);
    this.comenzar.pressed();
    // this.comenzar.dibujar();
  }
  void pressed() {
    this.pantalla.pressed();
  }

  void click() {
    this.pantalla.click();
  }
}
