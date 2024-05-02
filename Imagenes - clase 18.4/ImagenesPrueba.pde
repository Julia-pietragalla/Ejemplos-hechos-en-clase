PImage fondo;
PImage pececitos;
PImage pez2;
PImage calamar;

int posx=0;
int posy=600;

void setup(){
  size(600,600);
  fondo=loadImage("fondo.jpg");
  pececitos=loadImage("pececitos.png");
  pez2 = loadImage("pez2.png");
  calamar= loadImage("calamar.png");
  noCursor();
}

void draw(){
  background(fondo);
  image(pececitos,100,50,150,100);
  //image(nombreimg, posx, posy, dimhorizontal,dim vertical);
  image(pececitos,posx,200,200,100);
  
  posx=posx+2;
  if(posx>600){
    posx=0;
  }
  
  image(calamar,400,posy);
  posy=posy-1;
  if(posy<0){
    posy=600;
  }
  
  image(pez2, mouseX, mouseY,50,50);
  
}
