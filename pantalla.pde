class Pantalla {
  PImage fondo, fondo2;
  PFont textitulo;
  PFont texboton;
  PFont textiempo;
  PFont subtex;

  Juego juego;
  Boton comenzar, inicio, creditoss;

  Pantalla(Boton comenzar, Boton inicio, Boton creditoss)
  {
    textiempo= loadFont("CuteNotes-48.vlw");
    fondo = loadImage ("fondoinicio.jpg");
    fondo2 = loadImage ("fondo.png");
    texboton = loadFont("CutesRegular-48.vlw");
    subtex = loadFont("Cutesy-Regular-20.vlw");
    textitulo = loadFont("CuteMeow-48.vlw");
    juego = new Juego();
    this.comenzar = comenzar;
    this.inicio = inicio ;
    this.creditoss = creditoss ;
  }

  void dibujar(int ID) {

    if (ID == 0) {
      this.inicio();
      this.comenzar.dibujar();
      this.creditoss.dibujar();
    }

    if (ID == 1) {
      this.escenario();
      this.juego.dibujar();
      this.inicio.dibujar();
    }

    if (ID == 2) {
      this.creditos();
      this.inicio.dibujar();
    }
  }


  void inicio() {
    //inicio


    image(fondo, 0, 0);
    textFont (textitulo);

    textSize(62);
    fill(0);
    text ("al meow", width/3-10, height/2.6);
    text ("rescate !", width/3-10, height/2);

    textSize(60);
    fill(242, 253, 111);
    text ("al meow", width/3-10, height/2.6);
    text ("rescate !", width/3-8, height/2);
  }

  void escenario() {
    background(0);
    image(fondo2, 0, 0);
    textFont (subtex);
    textSize(28);
    text ("Haga click soobre los gatitos para salvarlos", 148, 22);
    text ("Tienes 10 segundos", 235, 44);
  }


  void creditos() {
    image(fondo, 0, 0);

    textFont (textitulo);
    textSize(30);
    fill(0);
    text ("creditos", width/3+42, height/3);


    textFont (texboton);
    textMode(CENTER);
    textSize(17);
    fill(0);
    text ("alumna --- Agustina Alegre", width/3+10, 180);
    text ("profesor --- Matias Juaregui ", width/3+7, 220);
    text ("profesor --- Tobias Albirosa", width/3+9, 260);


    fill (253, 123, 89);
    strokeWeight(10);
    stroke(242, 253, 111, 40);
    rect(20, 20, 80, 30, 40);

    textSize(27);
    fill(0);
    text ("inicio", 32, 40);
  }

  void click() {
    this.comenzar.click();
    this.inicio.click();
    this.creditoss.click();
  }

  void pressed () {
    this.comenzar.pressed();
    this.inicio.pressed();
    this.creditoss.pressed();
  }
}
