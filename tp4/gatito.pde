
SoundFile sonido;

class Gatito {
  PImage gatito;
  float posX, posY ;
  int  a = 300 ;
  int b = 400 ;
  int  c = 220;
  int d = 290;
  int anchogato = 438 ;
  int altogato = 701 ;

  Gatito () {
    gatito = loadImage ("gatito.png");

    posY = height;
    posX = width;
  }

  void  actualizar () {

    if (( mouseX>a)&&(mouseX<a+c)&&(mouseY>b)&&(mouseY<b+c) == mousePressed ) {
      sonido.play();
    }
  }


  void dibujargatito() {
    image(gatito, posX/2.5, posY/1.5);
    gatito.resize(anchogato/4, altogato/4);
  }
}
