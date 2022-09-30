
class Callejon {
  PImage callejon;
PFont texto ;
  Callejon () {
    callejon = loadImage ("callejon.jpg");
    texto = createFont("Calibri-Light-48.vlw",48);
  }

  void dibujarcallejon() {
  
    image(callejon, 0, 0);
    textFont(texto,15);
    text("Presione con el click del mouse uno de los objetos y arrastrelo",100,50);
        text("hacia el gatito para hacerlo feliz",200,103);
  }

}
