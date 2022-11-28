int maxgatitos = 20;
Gatos[] misgatitos= new Gatos  [maxgatitos];
class Gatos {
  Estados estados;

  PFont texboton;
  PFont subtex;
  PImage gatito;
  float x, y;
  int d;
  float xSpeed;
  float ySpeed;
int g = second();

  Gatos(float x, float y, int d) {
    this.x = x ;
    this.y = y ;
    this.d = d ;
    xSpeed = random(4, 9);
    ySpeed = random(4, 9);
    gatito = loadImage ("gato2.png");
    subtex = loadFont("Cutesy-Regular-20.vlw");
    texboton = loadFont("CutesRegular-48.vlw");
    savetime = millis();
  }
  void dibujar() {
        this.estados.dibujar();

  }

  void speed() { //mover
    x += xSpeed;
    y += ySpeed;
  }


  void colision() {

    if ((x<65) || (x>470)) {
      xSpeed = -xSpeed;
    }

    if ((y<70) || (y>240)) {
      ySpeed = -ySpeed;
    }
  }


  void display() { //imagen que se reproduce
    gatito.resize(65, 65);
    image(gatito, x, y);
  }

  void aplasta() {
    if (mousePressed) {
      float distance = dist(mouseX, mouseY, x, y);
      if (distance<d) {
        xSpeed = 0;
        ySpeed = 0;
        x = -1000;
        gatitossave++;
        highScore = max(gatitossave, highScore);
      }
    }
  }
  void score() {
    textFont (subtex);
    textSize(40);
    text("gatitos salvados "+gatitossave+"  de 20", 150, 380);
 
  }
  
  
  
}
