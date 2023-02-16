
class Estados {
  int gatitossave = 0; // putaje gatitos salvados
  int highScore = 0; // cantidad de gattos que salvamos
  int  savetime; //almacenar tiempo de juego
  int totaltime = 12000; //tiempo que dura el juego

  Juego juego;
  PFont textitulo;
  PFont texestado;
  PFont texboton;
  boolean ganar, perder, reiniciar;
  Estados ( ) {
    texestado = loadFont("CuteNotes-48.vlw");
    texboton = loadFont("CutesRegular-48.vlw");
  }

  void dibujar () {
    int passedTime = millis() - savetime;

    if (passedTime > totaltime) {
      this.ganar  = false;
      this.perder  = true;
      perder();
      reiniciar();
    }
    if (gatitossave == 20) {
      this.ganar  = true;
      this.perder  = false;
      ganar();
      reiniciar();
    }
    // tiempo();
  }


  void ganar () {
    fill(132, 247, 117);
    strokeWeight(10);
    stroke(242, 253, 111, 40);
    rect(155, 230, 290, 150, 50);

    textFont (texestado);

    textSize(40);
    fill(0);
    text ("Ganaste", width/3.2, height/2+9);
    text ("<", width/2.1, height/2+50);
  }

  void perder () {


    fill (253, 123, 89);
    noStroke();
    rect(155, 230, 290, 150, 50);
    textFont (texestado);
    textSize(40);
    fill(0);
    text ("Perdiste", width/3.6, height/2+9);
    text (">", width/2.1, height/2+50);
    reiniciar();
  }

  void reiniciar () {

    int passedTime = millis() - savetime;
    if (passedTime > totaltime ) {
      reiniciar = true;
      savetime = millis();
      gatitossave = 0;
      for (int i=0; i<misgatitos.length; i++) {
        misgatitos[i] = new Gatos(random (100, 200), random(100, 200), 80);
      }
    }
  }
}
