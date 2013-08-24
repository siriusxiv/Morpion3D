ArrayList<Square> squares;

int currentPlayer=1;

void setVariables(){
  squares = new ArrayList<Square>();
  int offset=0;
  for(int i = 0; i<27 ; i++){
    if(i==9){
      offset=10;
    }
    if(i==18){
      offset=20;
    }
    Square square = new Square(50*(i%3),50*(i/3)+offset,i);
    squares.add(square);
  }
}

void changePlayer(){
  if(currentPlayer==1){
    currentPlayer=2;
  }else{
    currentPlayer=1;
  }
}
