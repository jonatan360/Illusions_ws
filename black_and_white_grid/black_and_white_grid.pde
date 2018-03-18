  //use arrays:
  
  
  /*
  1  2
  3  4  
  */

boolean[][] rects; // twodimensional array, think rows and columns
boolean invert;

float size_box = 0.1;
float size_box_1 = 0.03;
float margin = 3;
int[][]my_rects = { {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 6, 7, 4, 1, 2, 1, 2},
                    {1, 2, 5, 6, 5, 8, 3, 4, 3, 2, 1},
                    {2, 1, 6, 5, 2, 1, 2, 1, 2, 1, 2},
                    {1, 6, 5, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 6, 1, 2, 1, 2, 1, 2},
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 6, 1, 2, 1, 2, 1, 2},
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1},
                    {2, 1, 2, 1, 6, 1, 2, 1, 2, 1, 2},
                    {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1}
                  };
float[][]positions_x = new float[my_rects.length][my_rects.length];
float[][]positions_y = new float[my_rects.length][my_rects.length];

int fill_black = 0;
int fill_white = 255;


void rect_1 (float r, float c){  // Only black
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
}

void rect_2 (float r, float c){ // Only white
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
}


void rect_3 (float r, float c){ // Black with white in 1 and 4
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_white);
  stroke(3);
  rect(r+margin, c+margin, width*size_box_1,height*size_box_1); 
  rect(r+margin *10, c+margin*10, width*size_box_1 ,height*size_box_1); 
}


void rect_4 (float r, float c){ // White with black in 1 and 4
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_black);
  stroke(3);
  rect(r+margin, c+margin, width*size_box_1,height*size_box_1);
  rect(r+margin *10, c+margin*10, width*size_box_1 ,height*size_box_1); 
}

void rect_5 (float r, float c){ // Black with black in 2 and 3
  stroke(3);
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_white);
  stroke(4);
  rect(r+margin, c+margin*10, width*size_box_1,height*size_box_1);
  rect(r+margin*10, c+margin, width*size_box_1 ,height*size_box_1); 
}


void rect_6 (float r, float c){ // White with black in 2 and 3
  stroke(3);
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_black);
  stroke(3);
  rect(r+margin, c+margin*11, width*size_box_1,height*size_box_1); // Down
  rect(r+margin*11, c+margin, width*size_box_1 ,height*size_box_1); // Up
}

void rect_7 (float r, float c){ // Black with white in 4 and 3
  stroke(3);
  fill(fill_black);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_white);
  stroke(3);
  rect(r+margin, c+margin*11, width*size_box_1,height*size_box_1);
  rect(r+margin*11, c+margin*11, width*size_box_1 ,height*size_box_1); 
}

void rect_8 (float r, float c){ // White with black in 4 and 3
  stroke(3);
  fill(fill_white);
  rect(r, c, width*size_box,height*size_box); 
  fill(fill_black);
  stroke(3);
  rect(r+margin, c+margin*11, width*size_box_1,height*size_box_1);
  rect(r+margin*11, c+margin*11, width*size_box_1 ,height*size_box_1); 
}



void setup (){
  
  size(500,500);
  fill(0);
  invert = false;
  noStroke();
  background(255); // clear background with white
  
  for (int r=0; r<=my_rects.length-1; r++ ){ // rows
    for (int c=0; c<=my_rects.length-1; c++ ){ // cols
     positions_x[r][c] = c*size_box*width;
     positions_y[r][c] = r*size_box*height;
     println(positions_x[r][c]);
   //  println(positions_y[r][c]);
    }
  }   
  
  for (int x=0; x<my_rects.length; x++) {
    for (int y=0; y<my_rects.length; y++) {
      if(my_rects[x][y] == 1){
        rect_1(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 2){
        rect_2(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 3){
        rect_3(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 4){
        rect_4(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 5){
        rect_5(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 6){
        rect_6(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 7){
        rect_7(positions_x[x][y],positions_y[x][y]);  
      }
      
      if(my_rects[x][y] == 8){
        rect_8(positions_x[x][y],positions_y[x][y]);  
      }

    }
  }
  
  /*for (int r=0; r<=height; r+=height*size_box ){ // rows
    invert = !invert;
    for ( int c = 0; c < width; c+= width*size_box ){ // columns per row  
        
        //if(invert){
          //fill(0);
          //rect(r, c, width*size_box,height*size_box); // draw it!
          //fill(255);
          //stroke(3);
          //rect(r+margin, c+margin, width*size_box_1,height*size_box_1); // left corner
          //rect(r+margin *10, c+margin*10, width*size_box_1 ,height*size_box_1); // right corner
        //}
        //invert = !invert;
    }
    
  }*/
  
}

void draw(){
  //print("Hola");
}
