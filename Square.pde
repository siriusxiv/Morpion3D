class Square {
  int x;
  int y;
  int l=50;
  int h=50;

  int i;

  int val=0;
  
  color c = color(255,0,0);

  Square(int x_, int y_, int i_) {
    x=x_;
    y=y_;
    i=i_;
  }

  void draw() {
    fill(c);
    stroke(0);
    rect(x, y, l, h);
    if (val==1) {
      drawCross(x, y);
    } else if (val==-1) {
      drawCircle(x, y);
    }
  }

  boolean hover() {
    return mouseX>x && mouseX<x+l && mouseY>y && mouseY<y+h;
  }

  void isSelected() {
    if (val==0) {
      if (hover() && click()) {
        if (currentPlayer==1) {
          val=1;
        }
        else {
          val=-1;
        }
        changePlayer();
      }
    }
  }
}

