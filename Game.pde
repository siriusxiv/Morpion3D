int finished(){
  for(int i = 0; i<27; i++){
    int check = checkAlign(i);
    if(check!=0){
        return check;
    }
  }
  return 0;
}

int checkAlign(int i){
  int left = left(i);
  int right = right(i);
  int front = front(i);
  int back = back(i);
  int top = top(i);
  int bottom = bottom(i);
  int lf = leftfront(i);
  int rf = rightfront(i);
  int lb = leftback(i);
  int rb = rightback(i);
  int tf = topfront(i);
  int tb = topback(i);
  int bf = bottomfront(i);
  int bb = bottomback(i);
  
  if(left!=-1 && right!=-1){
    int isAligned = isAligned(i,left,right);
    if(isAligned!=0){
      return isAligned;
    }
  }
  if(front!=-1 && back!=-1){
    int isAligned = isAligned(i,front,back);
    if(isAligned!=0){
      return isAligned;
    }
  }
  if(top!=-1 && bottom!=-1){
    int isAligned = isAligned(i,top,bottom);
    if(isAligned!=0){
      return isAligned;
    }
  }
  if(lf!=-1 && rb!=-1){
    int isAligned = isAligned(i,lf,rb);
    if(isAligned!=0){
      return isAligned;
    }
  }
  if(rf!=-1 && lb!=-1){
    int isAligned = isAligned(i,rf,lb);
    if(isAligned!=0){
      return isAligned;
    }
  }
  if(tf!=-1 && bb!=-1){
    int isAligned = isAligned(i,lf,rb);
    if(isAligned!=0){
      return isAligned;
    }
  }
  if(tb!=-1 && bf!=-1){
    int isAligned = isAligned(i,lf,rb);
    if(isAligned!=0){
      return isAligned;
    }
  }
  return 0;
}

int sum(int i, int a, int b){
  return squares.get(i).val+squares.get(a).val+squares.get(b).val;
}

int isAligned(int i, int a, int b){
  switch(sum(i,a,b)){
   case 3:
    changeColor(i,a,b);
    return 1;
   case -3:
    changeColor(i,a,b);
    return 2;
   default:
    return 0;
  }
}

void changeColor(int i,int a,int b){
  squares.get(i).c=color(0,255,0);
  squares.get(a).c=color(0,255,0);
  squares.get(b).c=color(0,255,0);
}

int left(int a){
  if(a%3!=0){
    return a-1;
  }else{
    return -1;
  }
}

int right(int a){
  if(a%3!=2){
    return a+1;
  }else{
    return -1;
  }
}

int front(int a){
  if(a%9>=3){
    return a-3;
  }else{
    return -1;
  }
}

int back(int a){
  if(a%9<6){
    return a+3;
  }else{
    return -1;
  }
}

int top(int a){
  if(a>=9){
    return a-9;
  }else{
    return -1;
  }
}

int bottom(int a){
  if(a<18){
    return a+9;
  }else{
    return -1;
  }
}

int leftfront(int a){
  if(a%9<3 || a%3==0){
    return -1;
  }else{
    return a-4;
  }
}

int rightfront(int a){
  if(a%9<3 || a%3==2){
    return -1;
  }else{
    return a-2;
  }
}

int leftback(int a){
  if(a%9>=6 || a%3==0){
    return -1;
  }else{
    return a+2;
  }
}

int rightback(int a){
  if(a%9>=6 || a%3==2){
    return -1;
  }else{
    return a+4;
  }
}

int topfront(int a){
  if(a<9 || a%9<3){
    return -1;
  }else{
    return a-12;
  }
}

int topback(int a){
  if(a<9 || a%9>=6){
    return -1;
  }else{
    return a-6;
  }
}

int bottomfront(int a){
  if(a>=18 || a%9<3){
    return -1;
  }else{
    return a+6;
  }
}

int bottomback(int a){
  if(a>=18 || a%9>=6){
    return -1;
  }else{
    return a+12;
  }
}

