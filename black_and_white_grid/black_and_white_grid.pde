  //use arrays:

boolean[][] rects; // twodimensional array, think rows and columns
boolean invert;

void setup (){
  
  size(300,300);
  fill(0);
  invert = false;
  noStroke();
  background(255); // clear background with white
  
  
  
  
  
  for (int r=0; r<=height; r+=height*0.05 ){ // rows
    invert = !invert;
    for ( int c = 0; c < width; c+= width*0.05 ){ // columns per row          
        if(invert){
          fill(0);
          rect(r, c, width*0.05,height*0.05); // draw it!
        }
        invert = !invert;
    }
    
  }
  
}