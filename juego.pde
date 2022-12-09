class Juego {

  Estados estados;
  Juego() {
    
    estados = new Estados();

    for (int i = 0; i<misgatitos.length; i++) {
      misgatitos[i] = new Gatos(random (100, 200), random(100, 200), 80);
    }
  }

  void dibujar() {
    for (int i = 0; i<misgatitos.length; i++) {
      //llamar a las funciones
      misgatitos[i].speed();
      misgatitos[i].display();
      misgatitos[i].colision();
      misgatitos[i].salvar();
      misgatitos[i].score();
    }
    estados.dibujar();

  }
}
