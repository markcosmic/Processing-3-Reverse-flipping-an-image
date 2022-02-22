
PImage hand;
int s;
float x, y, xSpeed;
void setup(){
  surface.setLocation(0, 0); 
  size(800,600);
  hand = loadImage("alienhand02.png");
  imageMode(CENTER);
  hand.resize(hand.width/2, hand.height/2);
  x = width/2;
  y = height/2;
  s = 1;
  xSpeed = 5;
}

void draw(){
  background(0);
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
