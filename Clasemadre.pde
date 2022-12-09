class Madre {
  Pantalla pantalla;
  Boton botoncomenzar, botoninicio, botoncreditos;

  int ID;

  Madre() {
    this.ID=0;
     this.botoncomenzar = new Boton ( this, width/3+25, height-140, 160, 40, 35, width/3+40, height-115, "comenzar");
    this.botoninicio  = new Boton ( this, 20, 20, 80, 30, 27, 32, 40, "inicio");
    this.botoncreditos  = new Boton ( this, 470, 20, 110, 30, 27, 480, 40, "creditos");
    this.pantalla = new Pantalla(this.botoncomenzar, this.botoninicio, this.botoncreditos);
   
  }

  void dibujar () {
    this.pantalla.dibujar(this.ID);

    
  }
  void pressed() {
    this.pantalla.pressed();
  }

  void moved() {
    this.pantalla.moved();
  }
}
