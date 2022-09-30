
class Comida {
  int tamcomida ;
  boolean mover;
  boolean estoyDentro;
  float posY, posX ;  
  int anchogato, altogato; 

  Comida() { 
    posY = 0 ;
    posX = 50 ;
    tamcomida = 512;
  }

  void dibujarcomida () {
    pushStyle();
    image(comida, posX, posY);
    comida.resize(tamcomida/4, tamcomida/4);
    popStyle();
  }

  void actualizar() {
    if (mousePressed) {
      mover = true ;
    } else {
      mover =false;
    }
    float d = dist( posX, posY, mouseX, mouseY );

    if (d < tamcomida/5) {
      estoyDentro = true;
    } else {
      estoyDentro = false;}
    }
void mover () {
    if ( mover && estoyDentro ) {
      posX = mouseX;
      posY = mouseY;
    }
  }
}
