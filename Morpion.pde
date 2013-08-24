void setup(){
  size(150,470);
  smooth();
  setVariables();
}

void draw(){
  background(255);
  for(Square s : squares){
    s.draw();
    int finished;
    if((finished=finished())==0){
      s.isSelected();
    }else{
      fill(0,0,255);
      textAlign(CENTER,CENTER);
      text("Player "+finished+" wins!",width/2,height/2);
    }
  }
  mousePrevioulyPressed=mousePressed;
}

