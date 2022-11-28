//Agustina Alegre 88166/0.
//Tecno multimedia 1, comision 2.
// Video explicativo :
//Mini juego - Gatitos al rescate.s


Madre madre;
void setup () {
 size(600,400);
background (360,360,360);
cursor (HAND);

madre = new Madre ();

}

void draw(){
madre.dibujar();

}

void mousePressed (){
madre.pressed();

}
