int gatitossave = 0; // putaje gatitos salvados
int highScore = 0; // cantidad de gattos que salvamos
boolean ganar  = true; //cambiar pantalla
int  savetime; //almacenar tiempo de juego
int totaltime = 10000; //tiempo que dura el juego



class Estados {

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
      perder();
      this.ganar  = false;
      this.perder  = true;
    }
    if (gatitossave == 20) {
      ganar ();
      this.ganar  = true;
      this.perder  = false;
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
    text ("Ganaste", width/3.2
      , height/2+9);
    text ("<", width/2.1
      , height/2+50
      );
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
  }

  //void tiempo () {
  //textFont (texestado);
  //text (frameCount++, width/2, 50);
  //}
}
