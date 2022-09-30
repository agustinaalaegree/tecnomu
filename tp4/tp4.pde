import processing.sound.*;

//Tecno Multimedia 1, comision 2
//Agustina Alegre
//tecno multimedia 1; comision 2
//

PImage escena, canasta, comida, gatito;
Escenario E;

void setup () {
  size(600, 600);
  cursor (HAND);
sonido = new SoundFile (this,"cat.mp3");

  escena = loadImage ("callejon.jpg");
  canasta = loadImage ("canasta.png");
  comida = loadImage ("comida.png");
  gatito = loadImage ("gatito.png");

  E = new Escenario ();
}


void draw () {

  E.dibujar();
}
