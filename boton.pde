class Boton {
  Madre madre;
  PFont texboton;
  int posx, posy, tamx, tamy, textam, texx, texy;
  String t;
  boolean detectar;
  color colorboton;

  Boton (  Madre madre, int posx, int posy, int tamx, int tamy, int textam, int texx, int texy, String t) {
    this.madre = madre;
    this.posx = posx;
    this.posy = posy;
    this.tamx = tamx;
    this.tamy = tamy;
    this.textam= textam;
    this.texx = texx;
    this.texy = texy;
    this.t = t;
    texboton = loadFont("CutesRegular-48.vlw");
  }

  void dibujar() {

    if (this.t.equals("comenzar")) {
      this.botoncito();
    }
    if (this.t.equals("inicio")) {
      this.botoncito();
    }
    if (this.t.equals("creditos")) {
      this.botoncito();
    }
  }


  void botoncito () {
    textFont (texboton);
    strokeWeight(10);
    stroke(242, 253, 111, 40);
    fill(colorboton);
    rect(posx, posy, tamx, tamy, 10);
    textSize(textam);
    fill(0);
    text (t, texx, texy);
  }


  void pressed () {
    if (mousePressed && this.detectar && this.madre.ID == 0 && this.t.equals("comenzar") ) {
      this.madre.ID = 1;
    } else  if (mousePressed && this.detectar && this.madre.ID == 1 && this.t.equals("inicio") ) {
      this.madre.ID = 0;
    } else  if (mousePressed && this.detectar && this.madre.ID == 0 && this.t.equals("creditos") ) {
      this.madre.ID = 2;
    } else  if (mousePressed && this.detectar && this.madre.ID == 2 && this.t.equals("inicio") ) {
      this.madre.ID = 0;
    }
  }

  void moved() {
    if ((mouseX > posx )&&( mouseX < posx + tamx) &&
      (mouseY> posy )&& (mouseY < posy + tamy)) {
      detectar = true;
      this.colorboton = color (252, 255, 160);
    } else {
      detectar = false;
      this.colorboton = color (253, 123, 89);
    }
  }
}
