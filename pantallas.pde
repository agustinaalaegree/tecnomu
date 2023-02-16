
class Pantalla {
  PImage inicio, escenario, nubes;
  PFont textitulo;
  PFont texboton;
  PFont subtex;
  Boton botoncomenzar, botoninicio, botoncreditos;
  Juego juego;
  Estados estados;

  Pantalla(  Boton botoncomenzar, Boton botoninicio, Boton botoncreditos)
  {

    this.botoncomenzar =  botoncomenzar;
    this.botoninicio =  botoninicio;
    this.botoncreditos =  botoncreditos;

    inicio = loadImage ("inicio.png");
    escenario = loadImage ("pantalla.png");
    nubes = loadImage ("nubes.png");
    textitulo = loadFont("CuteMeow-48.vlw");
    texboton = loadFont("CutesRegular-48.vlw");
    subtex = loadFont("Cutesy-Regular-20.vlw");
    juego = new Juego();
    estados = new Estados();
  }

  void dibujar(int ID) {



    if (ID == 0) {
      this.inicio();
    }

    if (ID == 1) {
      this.escenario();
    }

    if (ID == 2) {
      this.creditos();
    }
  }


  void inicio() {

    image(inicio, 0, 0);

    this.botoncomenzar.dibujar();
    this.botoncreditos.dibujar();

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
    this.juego.dibujar();
    this.estados.dibujar();
    textFont (subtex);
    textSize(28);
    text ("Haga click soobre los gatitos para salvarlos", 148, 22);
    text ("Tienes 15 segundos", 235, 44);
    this.botoninicio.dibujar();
  }


  void creditos() {
    image(inicio, 0, 0);
    this.botoninicio.dibujar();

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

  void moved() {
    this.botoncomenzar.moved();
    this.botoninicio.moved();
    this.botoncreditos.moved();
  }

  void pressed () {
    this.botoncomenzar.pressed();
    this.botoninicio.pressed();
    this.botoncreditos.pressed();
  }
}
