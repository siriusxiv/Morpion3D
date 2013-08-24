void setup(){
  size(150,470);
  smooth();
  setVariables();
}

void draw(){
  background(255);
  for(Square s : squares){
    s.draw();
    if(finished()==0){
      s.isSelected();
    }else{
      text("FIN",width/2,height/2);
    }
  }
  mousePrevioulyPressed=mousePressed;
}

