import processing.sound.*;
SoundFile INTRO;
int estado;


int pantalla;

int maxImages  = 26;

PImage [] images = new PImage  [maxImages];
String [] filenames = {"Imagn1.jpg","a.jpg","c.jpg","d.jpg","e.jpg","f.jpg","g.jpg","h.jpg","i.jpg","j.jpg","k.jpg","l.jpg","m.jpg","n.jpg","o.jpg","p.jpg","q.jpg",
"r.jpg","s.jpg","t.jpg","u.jpg","v.jpg","w.jpg","x.jpg","y.jpg","z.jpg"};

PImage imagen2;
//fuente
PFont amiwos;
PFont amiwos2;

void setup(){ 
  
  
pantalla = 0;

amiwos = loadFont("GabrielWeissFriendsFont-50.vlw");
amiwos2 = loadFont("GabrielWeissFriendsFont-20.vlw");

size (700,400); 

for (int i = 0; i < filenames.length; i++){
images [i] = loadImage(filenames[i]);


INTRO = new SoundFile(this, "INTRO.wav");
  estado = 0;
    INTRO.loop();

}
  
imagen2= loadImage ("b.png");


textAlign (CENTER, CENTER);
}


 void draw(){  
background( 0 );
println( frameCount );
  
  //PANTALLA A B

if ( pantalla == 0 ) {
image (images[1], 0, 0);

textSize (50); 
textFont (amiwos);
fill(20,26,27);
text("f   r   i   e   n   d   s", width/2,120 );
noStroke();
rect(130,150,435,55);
fill(255,255,255);
text("f   r   i   e   n   d   s", width/2+2, 120+2);
textSize(48);
text("t h e   r e u n i o n", width/2,177 );

image (imagen2, 0, 0); 
    if( frameCount > (3*60) ){
      pantalla = 1;
    }
    
    
    
  //PANTALLA B C
  } else if ( pantalla == 1 ) {
 image (images[2], 0, 0);
 textSize (50); 
textFont (amiwos);
fill(20,26,27);
text("f   r   i   e   n   d   s", width/2,120 );
noStroke();
rect(130,150,435,55);
fill(255,255,255);
text("f   r   i   e   n   d   s", width/2+2, 120+2);
textSize(48);
text("t h e   r e u n i o n", width/2,177 );

image (imagen2, 0, 0); 
 
    if( frameCount > (5*60) ){
      pantalla = 2;
    }

  //PANTALLA D Jen 1-2
  } else if ( pantalla == 2 ) {
image (images[3], 0, 0);

    if( frameCount > (7*60) ){
      pantalla = 3;
    }
   
  //PANTALLA E Jen 2-2
  } else if ( pantalla == 3 ) {
    image (images[4], 0,0 );
   textSize(35);
fill(0);
text("Jennifer Aniston",mouseX, 300); 
fill(255);
text("Jennifer Aniston",mouseX, 300+2); 
    
    if( frameCount > (10*60) ){
      pantalla = 4;  
    }
    
  //PANTALLA F Mon 1-2
  } else if ( pantalla == 4 ) {
    image (images[5], 0, 0);
    
    if( frameCount > (12*60) ){
      pantalla = 5;
    }
    
   //PANTALLA G Mon 2-2
  } else if ( pantalla == 5 ) {
image (images[6], 0, 0);

fill(0);
text("Courteney Cox",mouseX, 300);
fill(255);
text("Courteney Cox",mouseX, 300+2);
    
    if( frameCount > (15*60) ){
      pantalla = 6;
    }
     //PANTALLA H P 1-2
  } else if ( pantalla == 6 ) {
 image (images[7], 0, 0);

    if( frameCount > (17*60) ){
      pantalla = 7;  
    }
    
   //PANTALLA I P 2-2
  } else if ( pantalla == 7 ) {
 image (images[8], 0, 0);

fill(0);
text("Lisa Kudrow",mouseX, 300);
fill(255);
text("Lisa Kudrow",mouseX, 300+2);
    
    if( frameCount > (20*60) ){
      pantalla = 8;  
    }
    
     //PANTALLA J J 1-2
  } else if ( pantalla == 8 ) {
 image (images[9], 0, 0);
    
    if( frameCount > (22*60) ){
      pantalla = 9;  
    }
   
   //PANTALLA K J 2-2
  } else if ( pantalla == 9) {
 image (images[10], 0, 0);

fill(0);
text("Matt LeBlanc",mouseX, 300);
fill(255);
text("Matt LeBlanc",mouseX, 300+2);
    
    if( frameCount > (25*60) ){
      pantalla = 10;  
    }
  
 //PANTALLA L Chan 1-2
  } else if ( pantalla == 10) {
 image (images[11], 0, 0);
    
    if( frameCount > (27*60) ){
      pantalla = 11;  
    }
  
//PANTALLA M Chan 1-2
  } else if ( pantalla == 11) {
 image (images[12], 0, 0);

fill(0);
text("Matthew PerrY",mouseX, 300);
fill(255);
text("Matthew PerrY",mouseX, 300+2);
    
    if( frameCount > (30*60) ){
      pantalla = 12;  
    }
    
 //PANTALLA N Ross 1-2
  } else if ( pantalla == 12) {
 image (images[13], 0, 0);

    if( frameCount > (32*60) ){
      pantalla = 13;  
    }
    
 //PANTALLA O Ross 2-2
  } else if ( pantalla == 13) {
 image (images[14], 0, 0);

fill(0);
text("David Schwimmer",mouseX, 300);
fill(255);
text("David Schwimmer",mouseX, 300+2);
    
    if( frameCount > (35*60) ){
      pantalla = 14;  
    }
 //PANTALLA P 
  } else if ( pantalla == 14) {
 image (images[15], 0, 0);

    
    if( frameCount > (36*60) ){
      pantalla = 15;  
    }
 //PANTALLA Q
  } else if ( pantalla == 15) {
 image (images[16], 0, 0);

    if( frameCount > (37*60) ){
      pantalla = 16;  
    }
 //PANTALLA R
  } else if ( pantalla == 16) {
 image (images[17], 0, 0);

    if( frameCount > (38*60) ){
      pantalla = 17;  
    }
 //PANTALLA S
  } else if ( pantalla == 17) {
 image (images[18], 0, 0);

    if( frameCount > (39*60) ){
      pantalla = 18;  
    }
 //PANTALLA T
  } else if ( pantalla == 18) {
 image (images[19], 0, 0);


    if( frameCount > (40*60) ){
      pantalla = 19;  
    }

 //PANTALLA U
  } else if ( pantalla == 19) {
 image (images[20], 0, 0);


    if( frameCount > (41*60) ){
      pantalla = 20;  
      
    } //PANTALLA V
  } else if ( pantalla == 20) {
 image (images[21], 0, 0);


    if( frameCount > (42*60) ){
      pantalla = 21;  
      
    } //PANTALLA W
  } else if ( pantalla == 21) {
 image (images[22], 0, 0);


    if( frameCount > (43*60) ){
      pantalla = 22;  
      
    } //PANTALLA X
  } else if ( pantalla == 22) {
image (images[23], 0, 0);


    if( frameCount > (44*60) ){
      pantalla = 23;  
   
} //PANTALLA Y
  } else if ( pantalla == 23) {
image (images[24], 0, 0);


textFont (amiwos);
textSize (30); 
fill(0);
text ("e x e c u t i v e    p r o d u c e r s", width/2,50 );
fill(255);
text ("e x e c u t i v e    p r o d u c e r s", width/2,50+2 );

textFont (amiwos);
textSize (40); 
fill(0);
text ("KEVIN  BRIGHT", width/2,100 );
fill(255);
text ("KEVIN  BRIGHT", width/2,100+2 );

textFont (amiwos2);
textSize (20); 
fill(0);
text ("&", width/2,150 );
fill(255);
text ("&", width/2,150+2 );

textFont (amiwos);
textSize (40); 
fill(0);
text ("MaRTA KAUFMANF", width/2,200 );
fill(255);
text ("MaRTA KAUFMANF", width/2,200+2 );

textFont (amiwos2);
textSize (20); 
fill(0);
text ("&", width/2,250 );
fill(255);
text ("&", width/2,250+2 );

textFont (amiwos);
textSize (40); 
fill(0);
text ("DAVID CRANE", width/2,300 );
fill(255);
text ("DAVID CRANE", width/2,300+2 );


    if( frameCount > (46*60) ){
      pantalla = 24;  
    
} //PANTALLA Z
  } else if ( pantalla == 24) {
image (images[25], 0, 0);

textSize (30); 
fill(0);
text ("e x e c u t i v e    p r o d u c e r s", width/2,150 );
fill(255);
text ("e x e c u t i v e    p r o d u c e r s", width/2,150+2 );

textFont (amiwos);
textSize (40); 
fill(0);
text ("KEVIN  BRIGHT", width/2,200 );
fill(255);
text ("KEVIN  BRIGHT", width/2,200+2 );


    if( frameCount > (48*60) ){
      pantalla = 25; 
      
 
    }  
   }
 }
  

 
 
