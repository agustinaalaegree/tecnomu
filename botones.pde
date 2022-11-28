class Boton {
  PFont texboton;
  int posx, posy, tamx, tamy;
  String t;
  Madre madre;
Estados estados;

  Boton (Madre madre, int posx, int posy, int tamx, int tamy, String t) {
    this.madre = madre;
    this.posx = posx;
    this.posy = posy;
    this.tamx = tamx;
    this.tamy = tamy;

    this.t = t;
  }

  void dibujar () {


    if (this.t.equals("comenzar")) {
      this.comenzar();
    }
    if (this.t.equals("inicio")) {
      this.inicio();
    }
  }



  void comenzar () {

    texboton = loadFont("CutesRegular-48.vlw");
    textFont (texboton);

    fill (253, 123, 89);
    strokeWeight(10);
    stroke(242, 253, 111, 40);


    rect(posx, posy, tamx, tamy, 10);
    textSize(27);
    fill(0);
    text ("comenzar", width/3+55, height-115);
  }
  void click() {
  }

  void pressed() {
    if (mousePressed) {
      this.madre.ID = 1;
    }
  }

  void inicio () {
    textMode(CENTER);

    textFont (texboton);

    fill (253, 123, 89);
    strokeWeight(10);
    stroke(242, 253, 111, 40);
    rect(20, 20, 80, 30, 40);


    textSize(27);
    fill(0);
    text ("inicio", 32, 40);
  }
}
