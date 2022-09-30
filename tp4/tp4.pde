import processing.sound.*;

//Tecno Multimedia 1, comision 2
//Agustina Alegre
//


Escenario E;

 
void setup () {
  size(600, 600);
  cursor (HAND);

  E = new Escenario ();
}


void draw () {

  E.dibujar();
}
