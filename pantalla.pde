class Pantalla {
  PImage inicio, escenario, nubes;
  PFont textitulo;
  PFont texboton;
  PFont subtex;
  Boton botoncomenzar, botoninicio, botoncreditos;
  Juego juego;


  Pantalla()
  {
    inicio = loadImage ("inicio.png");
    escenario = loadImage ("pantalla.png");
    nubes = loadImage ("nubes.png");
    textitulo = loadFont("CuteMeow-48.vlw");
    texboton = loadFont("CutesRegular-48.vlw");
    subtex = loadFont("Cutesy-Regular-20.vlw");
    this.botoncomenzar = new Boton ( width/3+25, height-140, 160, 40, 35, width/3+40, height-115, "comenzar");
    this.botoninicio  = new Boton ( 20, 20, 80, 30, 27, 32, 40, "inicio");
    this.botoncreditos  = new Boton ( 470, 20, 110, 30, 27, 480, 40, "creditos");
    juego = new Juego();
  }

  void dibujar(int ID) {

    if (ID == 0) {
      this.inicio();
      this.botoncomenzar.dibujar();
      this.botoncreditos.dibujar();
    }

    if (ID == 1) {
      this.escenario();
      this.juego.dibujar();
      this.botoninicio.dibujar();
    }

    if (ID == 2) {
      this.creditos();
      this.botoninicio.dibujar();
    }
  }


  void inicio() {

    image(inicio, 0, 0);
    textFont (textitulo);

    textSize(79);
    fill(0);
    text ("al meow", width/4, height/2.6);
    text ("rescate !", width/4, height/2);

    textSize(81);
    fill(242, 253, 111);
    text ("al meow", width/4, height/2.6);
    text ("rescate !", width/4, height/2);
  }

  void escenario() {
    background(0);
    image(escenario, 0, 0);
    image(nubes, 0, 0);

    textFont (subtex);
    textSize(28);
    text ("Haga click soobre los gatitos para salvarlos", 148, 22);
    text ("Tienes 10 segundos", 235, 44);
  }


  void creditos() {
    image(inicio, 0, 0);

    textFont (textitulo);
    textSize(40);
    fill(0);
    text ("creditos", width/3+27, height/3);


    textFont (texboton);
    textMode(CENTER);
    textSize(20);
    fill(0);
    text ("alumna --- Agustina Alegre", width/3, 250);
    text ("profesor --- Matias Juaregui ", width/3-10, 300);
    text ("profesor --- Tobias Albirosa", width/3, 350);
  }

  void click() {
    this.botoncomenzar.click();
  }

  void pressed (int ID) {
    if (ID == 0) {
      if (botoncomenzar.detectar) {
        ID = 1;
      }
      if (botoncreditos.detectar) {
        ID = 2 ;
      }
    }
  }
}
