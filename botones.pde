class Boton {
  PFont texboton;
  int posx, posy, tamx, tamy, textam, texx, texy;
  String t;
  boolean detectar;
  Madre madre;

  Boton (int posx, int posy, int tamx, int tamy, int textam, int texx, int texy, String t) {
   
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
    click();
    textFont (texboton);
    strokeWeight(10);
    stroke(242, 253, 111, 40);
    rect(posx, posy, tamx, tamy, 10);
    textSize(textam);
    fill(0);
    text (t, texx, texy);
  }


  void click() {
    if ((mouseX > posx )&&( mouseX < posx + tamx) &&
      (mouseY> posy )&& (mouseY < posy + tamy)) {
      detectar = true;
      fill (252, 255, 160);
    } else {
      detectar = false;
      fill (253, 123, 89);
    }
  }
}
