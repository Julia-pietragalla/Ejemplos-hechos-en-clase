int escena=1;
PImage fondo;

void setup() {
  size(600, 600) ;
  fondo = loadImage("fondo.jpg");
}
void draw() {
  background(0);

  switch(escena) {
  case 1:
    fill(255, 0, 0);
    rect(50, 50, 500, 500);
    break;
  case 2:
    fill(0, 255, 0);
    rect(50, 50, 500, 500);
    break;
  case 3:
    fill(0, 0, 255);
    rect(50, 50, 500, 500);
    break;
  case 4:
    image(fondo, 50, 50, 500, 500);
    break;
  case 5:
    fill(255);
    ellipse(300, 300, 50, 50);
    break;
  }

  fill(255);
  rect(100, 300, 100, 50);
}

void mousePressed() {
  if (mouseX>100 && mouseX<200 && mouseY>300 && mouseY<350) {
    escena++;
    if (escena>4) {
      escena=1;
    }
  }
}
