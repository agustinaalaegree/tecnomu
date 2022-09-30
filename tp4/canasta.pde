

class Canasta {
  float x, y, t;
  boolean mover, estoydentro; 
  int tamcanasta = 512;
  Canasta() {
    x = 400;
    y = 0;
    t = 512;
  }

  void mover() {

    if ( mover && estoydentro ) {
      x = mouseX;
      y = mouseY;
    }
  }

  void actualizar() {

    if (mousePressed) {
      mover =true;
    } else {
      mover = false;
    } 

    float d = dist (x, y, mouseX, mouseY);

    if (d < tamcanasta )
      estoydentro = true;
    else
      estoydentro = false;
  }




  void dibujarcanasta () {
    image(canasta, x, y);
    canasta.resize(tamcanasta/4, tamcanasta/4);
  }
}
