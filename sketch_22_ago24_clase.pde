float posy = 100;
int ancho =150;
int azul=255;

void setup(){
  size(400,400);
}

void draw(){
  background(0,azul,azul);
  azul = azul-1;
  if(azul < 0){
    azul=255;
  }
  
  
  strokeWeight(20);
  stroke(255,0,0); //rojo
  line(0,0,400,400);
  
  stroke(0,0,255); //azul
  strokeWeight(5);
  line(0,400,400,0); 
  
  strokeWeight(30);
  noStroke();
  fill(0);
  circle(200,posy,100);
  posy=posy+0.5;
  if(posy>400){
    posy=0;
  }
  noFill();
  stroke(0,255,0,200);
  ellipse(mouseX,mouseY,300,100);
  
  fill(255,255,0,200);
  rect(250,300,ancho,50);
  ancho=ancho-5;
  if(ancho<-100){
    ancho=200;
  }
  
}
