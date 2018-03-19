int distance=100;
int move_1 = 300;

int top=40;
int move1 = 0;
boolean increase1=true;
int move2 = 20;
boolean increase2=false;

void setup(){
  size(600, 600);
}

void draw(){
  background(250,250,250);
  stroke(66, 133, 244);
  strokeWeight(3);
  drawLines();
  move();
  
}

void drawLines(){
  translate(height/2, distance);
  pushMatrix();
    rotate(radians(45));
    int cut=50;
    
    line(0+cut, 0+move1, move_1-cut, 0+move1);
    line(0+cut, move_1+move1, move_1-cut, move_1+move1);
    
    line(move_1+move2, 0+cut, move_1+move2, move_1-cut);
    line(0+move2, 0+cut, 0+move2, move_1-cut);
  popMatrix();
}


boolean shouldIncrease(int move, boolean increase){
  if(move==0){
    return true;
  }else if (move==top){
    return false;
  }else{
    return increase;
  }
}

void move(){
  increase1=shouldIncrease(move1, increase1);
  if(increase1){
    move1++;
  }else{
    move1--;
  }
  
  increase2=shouldIncrease(move2, increase2);
  if(increase2){
    move2++;
  }else{
    move2--;
  }
}
