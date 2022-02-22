void init(){
  if(width != dWidth || height != dHeight){
    xSpeed = width/160;
    ar = hand.width/hand.height;
    h = height/4;
    w = int(h * ar);
    hand.resize(w, h);
    x = width/2;
    y = height/2;
    dWidth = width;
    dHeight = height; 
  }
}
