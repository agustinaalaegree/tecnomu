int gatitossave = 0; // putaje gatitos salvados
int highScore = 0; // cantidad de gattos que salvamos
boolean ganar  = true; //cambiar pantalla
int  savetime; //almacenar tiempo de juego
int totaltime = 10000; //tiempo que dura el juego



class Estados {
  Madre madre;
  Juego juego;
  Boton inicio;
  PFont textitulo;
  PFont texestado;
  PImage fondo;
  PFont texboton;
  boolean ganaste, perdiste, reiniciar;
  Estados () {
    fondo = loadImage ("fondoinicio.jpg");
    texestado = loadFont("CuteNotes-48.vlw");
    texboton = loadFont("CutesRegular-48.vlw");

}

  void dibujar () {
    int passedTime = millis() - savetime;

    if (passedTime > totaltime) {

      perder();
      perdiste = true;
    } else {

      if (gatitossave == 20) {
        ganar();
        ganaste = true;
      }
    }
  }

  void ganar () {
    fill(132, 247, 117);
    image(fondo, 0, 0);

    strokeWeight(10);
    stroke(242, 253, 111, 40);
    rect(170, 128, 270, 150, 100);

    textFont (texestado);

    textSize(40);
    fill(0);
    text ("Ganaste", width/3.2
      , height/2+9);
    text ("<", width/2.1
      , height/2+50
      );
  }

  void perder () {
    image(fondo, 0, 0);
    fill (253, 123, 89);
    noStroke();
    rect(155, 128, 290, 150, 50);
    textFont (texestado);
    textSize(40);
    fill(0);
    text ("Perdiste", width/3.6, height/2+9);
    text (">", width/2.1, height/2+50);
  }
}
