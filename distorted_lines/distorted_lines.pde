// No. 11
// https://list25.com/25-incredible-optical-illusions/

int nextTime;
int step;
int i, j;
boolean showColors;
void setup() {
  size(250, 550);
}

void draw() {
  background(255);
  
  strokeWeight(1);
  stroke(#6900C5);
  for(float i=0.05; i<=0.30; i+=0.05){
    line(width*i, 0, width*(1-i), height);
    line(width*i, height, width*(1-i), 0);
  }
  
  for(float i=0.0; i<=1.05; i+=0.05){
    line(0, height*i, width, height*(1-i));
  }
  
  strokeWeight(3);
  stroke(#E21D00);
  line(width*0.35, 0, width*0.35, height);
  line(width*0.65, 0, width*0.65, height);

}