class Escenario {


  Gatito gatito;
  Comida comida;
  Canasta canasta;
  Callejon callejon;

  Escenario () {
    gatito = new Gatito();
    comida = new Comida ();
    canasta = new Canasta ();
    callejon = new Callejon ();
  }



  void actualizar() {
    canasta.actualizar();
    canasta.mover();

    comida.actualizar();
    comida.mover();
    gatito.actualizar();

    
  }

  void dibujar () {
    callejon.dibujarcallejon();
    gatito.dibujargatito();
    comida.dibujarcomida();
    canasta.dibujarcanasta();
  }
}

void sonido (){

}
