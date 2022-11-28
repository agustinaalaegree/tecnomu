class Contador {

  
  int tiempo;
  int posY, posX;
  PFont textiempo;
  
  Contador (){
  tiempo = 30;
      textiempo= loadFont("CuteNotes-48.vlw");

  }
  void dibujar(){
   textFont (textiempo);

    textSize(30);
    fill(0);
    text ("00:30", 250, 30);
  }
  
}
