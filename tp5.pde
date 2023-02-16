import processing.sound.*;

//Agustina Alegre 88166/0.
//Tecno multimedia 1, comision 2.
// Video explicativo :
//Mini juego - Gatitos al rescate!

import processing.sound.*;

Madre madre;
SoundFile musicafondo ;

void setup () {
  size(600, 600);
  background (360, 360, 360);
  cursor (HAND);

  musicafondo = new SoundFile (this, "musicf.mp3");
  musicafondo.play();

  madre = new Madre ();
}

void draw() {
  madre.dibujar();
}
void mousePressed() {
  madre.pressed();
}
void mouseMoved() {
  madre.moved();
}
