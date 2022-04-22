PFont f = createFont ("ArialMT-30.vlw");

void setup()
{      
size (400,400);
background(100,200,270);
textFont(f);

}

void draw()
{      
//pastito
noStroke();
fill(33,173,26);
triangle(-10,400,5,390,15,400);

//gatito
fill(0,0,0);
circle(200,230,130);
circle(200,330,200);

//orejas
triangle(150,150,175,175,145,200);
triangle(225,175,250,150,255,200);

//ojos
fill(11,147,0);
ellipse(175,210,25,20);
ellipse(225,210,25,20);
//pupila
fill(0,0,0);
ellipse(175,210,10,20);
ellipse(225,210,10,20);

//bigotes 
stroke(255);
line(185,225,150,220);
line(185,225,150,240);

line(215,225,250,220);
line(215,225,250,240);

//boca
arc(100,340,130);

//nariz
noStroke();
fill(255,131,224);
triangle(190,221,210,221,200,233);

//miaw
fill(random(255),random(255),random(255));
text("MIAW"+ char(int(random(33,126))), random(width),random(height));


}
