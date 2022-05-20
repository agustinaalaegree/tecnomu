import processing.sound.*;
PImage notazombie ; 
PImage Z1, Z2, Z3, Z4, nivel, plantita, micro, logo, micro2, planta2 ; 
PFont creditos, zombis, plantas ; 
String textoNota = "Vale,tu ganas, nada de \ncomer más cerebros. \nAhora solo queremos \nbailar y cantar contigo" ;
String textoNota2 = "Atentamente,\n los zombis" ;
boolean areaboton = mouseX > 230 && mouseX < 230+50 && mouseY > 360 && mouseY < 360 + 35 ;
int tamCredito = 20;
int T = 100*8;
int T2 = 30;
float r = 0.0;

int estado;
int pantalla;
int maxImages  = 26;
SoundFile sonido;

void setup (){
size (600,400); 
notazombie = loadImage ("nota.jpg");
Z1 = loadImage("Z1.png");
Z2 = loadImage("Z2.png");
Z3 = loadImage("Z3.png");
Z4 = loadImage("Z4.png");
nivel = loadImage("nivel.jpg");
plantita = loadImage("PLANTA.png");
micro = loadImage("PLANTAMICRO2.png");
logo = loadImage ("logo.png");
micro2 = loadImage ("micro.png");
planta2 = loadImage ("planta2.png");

sonido = new SoundFile (this,"zombi.mp3");
sonido.play();


creditos = loadFont ("ComicSansMS-Bold-30.vlw");
zombis = loadFont ("DaddyinspaceDEMO-48.vlw");
plantas = loadFont ("SubtleCurves-48.vlw");
tamCredito = 20 ;
frameRate(50);
}

void draw (){

println(frameCount, pantalla == 0);
 if (areaboton){
background (0);
textFont (creditos,tamCredito);
logo();


 } else {
image (notazombie,0,0);
fill(0);
textFont (creditos,tamCredito);
text (textoNota, 160,130);
text (textoNota2, 340,250);
stroke(1);
fill(63,188,62);
rect(230,360,52,35);
textFont (zombis,tamCredito-2);
fill(0);
text ("PLAY", 235,383);
fill(255);
text ("PLAY", 237,383);

 }
 
if (frameCount > 100*3){
      pantalla = 1;
  
background (0);
textFont (creditos,tamCredito);
fill(255,255,255);
text ("créditos", 250, 350);
}
 
 if (frameCount > 100*4){
   pantalla = 2;
background (0);
textFont (creditos,tamCredito-5);
fill(255,255,255, 200 );
text ("Diseño de dibujo", 250-5, 350);
textFont (creditos,tamCredito);
fill(255,255,255);
text ("George Fan", 250, 370);

}

 if (frameCount > 100*5){
      pantalla = 3;

background (0);
textFont (creditos,tamCredito-5);
fill(255,255,255, 200 );
text ("Programación", 250+10, 350);
textFont (creditos,tamCredito);
fill(255,255,255);
text ("Tod Semple", 250, 370);

}
 
  if (frameCount > 100*6){
       pantalla = 4;
background (0);
textFont (creditos,tamCredito-5);
fill(255,255,255, 200 );
text ("Gráficos", 250+15, 350);
textFont (creditos,tamCredito);
fill(255,255,255);
text ("Rich Werner", 250-10, 370);

}
 
  if (frameCount > 100*7){
       pantalla = 5;

background (0);
textFont (creditos,tamCredito-5);
fill(255,255,255, 200 );
text ("Música y sonido", 250-5, 350);
textFont (creditos,tamCredito);
fill(255,255,255);
text ("Laura Shigihara", 250-25, 370);

} 
//ZOMBIS Y PLANTITA ""Bailando :(""

  if (frameCount > 100*8 ){
       pantalla = 6;

image (nivel,0,0);
image (plantita,random(0,2),random(0,3) );
image (micro ,0,0);
}

  if (frameCount > T + T2*1 ){
       pantalla = 7;

image (Z2,random(300,302),random(200,203));
}
  if (frameCount > T + T2*2 ){
    
image (Z3,random(380,382),random(270,273));
}

  if (frameCount > T + T2*3){
image (Z1,random(200,202),random(200,203));
}

  if (frameCount > T + T2*4 ){
image (Z3,random(250,252),random(120,123));
}

 if (frameCount > T + T2*5 ){
image (Z1,random(150,152),random(150,153));
}

 if (frameCount > T + T2*6 ){
image (Z1,random(150,152),random(265,267));
}

if (frameCount > T + T2*7){
image (Z1,random(190,192),random(73,75));
}

if (frameCount > T + T2*8){
image (Z3,random(130,132),random(70,73));
}

if (frameCount > T + T2*9 ){
image (Z3,random(250,252),random(270,273));
}

if (frameCount > T + T2*10 ){
image (Z1,random(500,502),random(270,273));
}

if (frameCount > T + T2*11 ){
image (Z3,random(500,502),random(70,73));
}
if (frameCount > T + T2*12 ){
image (Z2,random(430,432),random(75,73));
}

if (frameCount > T + T2*13  ){
image (Z2,random(430,432),random(75,73));
}
if (frameCount > T + T2*14 ){
image (Z2,random(500,502),random(170,173));
}
if (frameCount > T + T2*15 ){
image (Z2,random(450,452),random(205,207));
}

if (frameCount > T + T2*16 ){
image (Z3,random(400,402),random(180,183));
}

if (frameCount > T + T2*10 ){
textFont (creditos,tamCredito);
fill(255,255,255);
text (mouseX,0,0);
image (Z4,mouseX,70);
}



 if (frameCount > 100*8 ){
    fill (random(255),random(255),random(255), 100);
rect (0,0,600,400);

}
 if (frameCount > 1500){
fill (0,0,0,frameCount-50 );
rect (0,0,600,400);

}

 if (frameCount > 1550){
   background(0);
 fill (255,255,144,frameCount-60 );
noStroke();
triangle (300,-50,200,250,400,250);

fill (226,227,133);
ellipse(300,250,200,40);


}

 if (frameCount > 1600){
image (planta2,random(0,2),15);
image (micro2,0,15);

 }

 if (frameCount > 1900){
fill (0,0,0,frameCount-50 );
rect (0,0,600,400);

 }

}

//"Boton"

void mouseClicked(){
if ( mouseX > 230 && mouseX < 230+50 && mouseY > 360 && mouseY < 360 + 35 )
areaboton = true ;
}

void keyPressed(){
sonido.stop();
}
