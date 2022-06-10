// link de yt 
//https://youtu.be/HvS5V-UGHOs

int cantidad = 9;
int tam;

void setup() {
size(600, 600);
tam = width/cantidad;
}

void draw() {


if (mousePressed==false){
fondo1();
circulo1 ();
}
if  (mousePressed == true){
fondo2();
circulo2();
}

}


void fondo1() {
fill(random(0,255),0, random(0,255));
rect(0,0, 600,600);
  
}

void circulo1 (){
for (int A=0; A<cantidad; A++) { 
for (int B=0; B<cantidad; B++) 
 {
float distan = dist(mouseX, mouseY, A, B);
float diagonal = dist(0, 0, width, height); 
float ancho = map(distan, 0, diagonal, tam, tam*5);
fill(255,255,255,50);
noStroke();
ellipse(A*tam+tam/2, B*tam+tam/2, ancho, ancho);
}
}
}

void fondo2() {
fill(0,0,0);
rect(0,0, 600,600);
  
}

void circulo2 (){
for (int A=0; A<cantidad; A++) { 
for (int B=0; B<cantidad; B++) 
 {
float distan = dist(mouseX, mouseY, A, B);
float diagonal = dist(0, 0, width, height); 
float ancho = map(distan, 0, diagonal, tam, tam*5);
fill(random(0,200),0, random(0,255),50);
noStroke();
ellipse(A*tam+tam/2, B*tam+tam/2, ancho, ancho);
}
}
}
