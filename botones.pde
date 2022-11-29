class Boton {
  PFont texboton;
  int posx, posy, tamx, tamy, texx, texy;
  String t;
  boolean detectar;
  Madre madre;

  Boton (Madre madre, int posx, int posy, int tamx, int tamy, int texx, int texy, String t) {
    this.madre = madre;
    this.posx = posx;
    this.posy = posy;
    this.tamx = tamx;
    this.tamy = tamy;
    this.texx = texx;
    this.texy = texy;

    this.t = t;
    texboton = loadFont("CutesRegular-48.vlw");
  }

  void dibujar () {


    if (this.t.equals("comenzar")) {
      this.comenzar();
    }
    if (this.t.equals("inicio")) {
      this.inicio();
    }
    if (this.t.equals("creditos")) {
      this.Creditoss();
    }
  }



  void comenzar () {

    textFont (texboton);
    fill (253, 123, 89);
    strokeWeight(10);
    stroke(242, 253, 111, 40);
    rect(posx, posy, tamx, tamy, 10);
    textSize(27);
    fill(0);
    text (t, texx, texy);
  }

  void inicio () {
    textMode(CENTER);
    textFont (texboton);
    fill (253, 123, 89);
    strokeWeight(10);
    stroke(242, 253, 111, 40);
    rect(posx, posy, tamx, tamy, 40);
    textSize(27);
    fill(0);
    text (t, texx, texy);
  }

  void Creditoss () {
    textMode(CENTER);
    textFont (texboton);
    fill (253, 123, 89);
    strokeWeight(10);
    stroke(242, 253, 111, 40);
    rect(posx, posy, tamx, tamy, 40);
    textSize(27);
    fill(0);
    text (t, texx, texy);
  }

  void click() {
    if (mouseX > posx && mouseX < posx+tamx  && mouseY < posy && mouseY < posy+tamy) {
      detectar = true;
    } else {
      detectar = false;
    }
  }

  void pressed() {
    if (mousePressed && this.madre.ID == 0 && this.t.equals("comenzar")) {
      this.madre.ID = 1;
    }
    if (mousePressed && this.madre.ID == 0 && this.t.equals("creditos")) {
      this.madre.ID = 2;
    }
    if (mousePressed && this.madre.ID == 1  && this.t.equals("inicio")) {
      this.madre.ID = 0;
    }

    if (mousePressed && this.madre.ID == 2 && this.t.equals("inicio")) {
      this.madre.ID = 0;
    }
  }
}
