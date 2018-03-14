// http://illusionoftheyear.com/2008/05/filling-in-the-afterimage-after-the-image/

int nextTime;
int step;
int i, j;
boolean showColors;
void setup() {
  size(420, 300);
  i=0;
  j=1;
  showColors=false;
  step = 400;
  // wait for first frame -- aligned to step, it will occur between step and 2step-1
  nextTime = millis()-millis()%step + 2*step;

}

void draw() {
  background(255);
  
  //fill(107, 195, 181); //Blue color
  //fill(220, 148, 152); //Pink color
  fill(255);
  while (millis()<nextTime) {
    // do nothing while running out the 'slack' in the clock
  }
  if(j==3){
    showColors = true;
    step = 600;
    j=0;
  }else{
    showColors=false;
    step = 400;
  }
  println(showColors); // we are starting at the correct wall clock position
  
  pushMatrix();
  translate(width*0.25, height*0.5);  
  ratatePoligon(i);
  i++;
  if(showColors){fill(220, 148, 152);}
  star(0, 0, 30, 70, 4); 
  //translate(width*0.25, height*0.5);
  
  //ratatePoligon(j);
  //j++;
  rotate(PI/3);
  if(showColors){fill(107, 195, 181);}
  star(0, 0, 30, 70, 4); 
  rotate(PI/0.8);
  stroke(255);
  if(showColors){fill(173,169,180);noStroke();}
  
  polygon(0, 0, 28, 4);  // Triangle
  stroke(0);
  popMatrix();
  
  pushMatrix();
  translate(width*0.75, height*0.5);
  ratatePoligon(i);
  if(showColors){fill(220, 148, 152);}
  polygon(0, 0, 70, 3);  // Triangle
  //translate(width*0.25, height*0.5);
  
  //ratatePoligon(j);
  //j++;
  rotate(PI/3);
  if(showColors){fill(107, 195, 181);}
  polygon(0, 0, 70, 3);  // Triangle
  rotate(PI/2.0);
  stroke(255);
  if(showColors){fill(173,169,180);noStroke();}
  
  polygon(0, 0, 41, 6);  // Triangle
  stroke(0);
  popMatrix();
  j++;
  nextTime = nextTime + step;
}

void ratatePoligon(int i){
  rotate(i*PI/2.0);
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}