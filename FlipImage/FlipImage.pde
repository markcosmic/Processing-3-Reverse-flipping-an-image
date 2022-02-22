
PImage hand;
int s, w, h, dWidth, dHeight;
float x, y, xSpeed, ar;
void setup(){
  surface.setResizable(true);
  surface.setLocation(0, 0); 
  size(800,600);
  hand = loadImage("alienhand02.png");
  imageMode(CENTER);
  s = 1;
  init();
}

void draw(){
  background(0);
  init();
  scale(s,1);
  image(hand, x * s, y);
  x += xSpeed;
  if(x > width + hand.width/2 || x < -hand.width/2 ){
    s *= -1;  
    xSpeed *= -1;
  }
}

void mousePressed(){
  s *= -1;
}
