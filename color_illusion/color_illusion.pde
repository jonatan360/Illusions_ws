boolean[][] rects; // twodimensional array, think rows and columns
boolean flag_click = false;

float size_box = 0.03;
float size_box_1 = 0.03;
float margin = 3;


int size_x = 50;
int size_y = 50;
int[][] my_board = new int[size_x][size_y];
float[][]positions_x = new float[size_x][size_y];
float[][]positions_y = new float[size_x][size_y];
boolean invert = false;

int[][] my_rects = new int[size_x][size_y];

void setup (){
  invert = false;
  size(500,500);
  fill(0);
  noStroke();
  //change_rects(my_rects_normal);
  
  for (int r=0; r<size_x; r++ ){ // rows
    for (int c=0; c<size_y; c++ ){ // cols
     positions_x[r][c] = c*size_box*width;
     positions_y[r][c] = r*size_box*height;
    }
  }  
  draw_board();

}

void draw_board(){
  background(255); // clear background with white
  for (int x=0; x<size_x; x++) {
    for (int y=0; y<size_y; y++) {
      println(x+y);
      if( (x+y)%2 != 0){
        rect_3(positions_x[x][y],positions_y[x][y]); 
      } else {
        rect_1(positions_x[x][y],positions_y[x][y]); 
      }
     }
   }
}

void draw(){
  /*if (flag_click){
    change_rects(my_rects_effect);  
  } else{
    change_rects(my_rects_normal);  
  }
  draw_chess();*/
 // background(255); // clear background with white
}

void mouseClicked(){
  flag_click = !flag_click;
  println("Click");
}

void change_rects(int[][]x){
  for (int i = 0; i < my_rects.length; i++) {
    for (int j = 0; j < my_rects.length; j++) {
      my_rects[i][j] = x[i][j];
    }
  }
}

void rect_1 (float r, float c){  // Only white
  fill(255);
  rect(r, c, width*size_box,height*size_box); 
}

void rect_2 (float r, float c){ // Only purple
  fill(231, 36, 112);
  rect(r, c, width*size_box,height*size_box); 
}

void rect_3 (float r, float c){ // Only green
  fill(24, 239, 74);
  rect(r, c, width*size_box,height*size_box); 
}
