boolean flag_click = false;

float size_box = 0.025;


int size_x = 90;
int size_y = 90;
int[][] my_board = new int[size_x][size_y];
float[][]positions_x = new float[size_x][size_y];
float[][]positions_y = new float[size_x][size_y];

int[][] my_rects = new int[size_x][size_y];


int[]positions_purple_x = new int[size_x];
int[]positions_purple_y = new int[size_x];




void setup (){
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

void draw_board_purple(){
//  background(255); // clear background with white
  // Row 0
  rect_2(positions_x[0][1],positions_y[0][0]);
  rect_2(positions_x[0][3],positions_y[0][0]);
  rect_2(positions_x[0][5],positions_y[0][0]);

  // Row 1
  rect_2(positions_x[0][2],positions_y[1][0]);
  rect_2(positions_x[0][4],positions_y[1][0]);
  rect_2(positions_x[0][6],positions_y[1][0]);
  rect_2(positions_x[0][8],positions_y[1][0]);
  rect_2(positions_x[0][10],positions_y[1][0]);
  
  // Row 2
  rect_2(positions_x[0][3],positions_y[2][0]);
  rect_2(positions_x[0][5],positions_y[2][0]);
  rect_2(positions_x[0][7],positions_y[2][0]);
  rect_2(positions_x[0][9],positions_y[2][0]);
  rect_2(positions_x[0][11],positions_y[2][0]);
  
  // Row 3
  rect_2(positions_x[0][6],positions_y[3][0]);
  rect_2(positions_x[0][8],positions_y[3][0]);
  rect_2(positions_x[0][10],positions_y[3][0]);
  rect_2(positions_x[0][12],positions_y[3][0]);
  rect_2(positions_x[0][14],positions_y[3][0]);
  
  // Row 4
  rect_2(positions_x[0][9],positions_y[4][0]);
  rect_2(positions_x[0][11],positions_y[4][0]);
  rect_2(positions_x[0][13],positions_y[4][0]);
  rect_2(positions_x[0][15],positions_y[4][0]);
  
  // Row 5
  rect_2(positions_x[0][12],positions_y[5][0]);
  rect_2(positions_x[0][14],positions_y[5][0]);
  rect_2(positions_x[0][16],positions_y[5][0]);

  // Row 6
  rect_2(positions_x[0][15],positions_y[6][0]);
  rect_2(positions_x[0][17],positions_y[6][0]);
  
  // Row 7
  rect_2(positions_x[0][16],positions_y[7][0]);  
  
  // Row 8
  rect_2(positions_x[0][15],positions_y[8][0]);
  rect_2(positions_x[0][17],positions_y[8][0]);
  
  // Row 9
  rect_2(positions_x[0][16],positions_y[9][0]);    
  rect_2(positions_x[0][18],positions_y[9][0]);    
  rect_2(positions_x[0][20],positions_y[9][0]);    
  
  // Row 10
  rect_2(positions_x[0][17],positions_y[10][0]);
  rect_2(positions_x[0][19],positions_y[10][0]);  
 
  // Row 11
  rect_2(positions_x[0][18],positions_y[11][0]);
  rect_2(positions_x[0][20],positions_y[11][0]);  
  
  // Row 12
  rect_2(positions_x[0][19],positions_y[12][0]);
  rect_2(positions_x[0][21],positions_y[12][0]);    
  
  // Row 13
  rect_2(positions_x[0][20],positions_y[13][0]);
  rect_2(positions_x[0][22],positions_y[13][0]); 
  rect_2(positions_x[0][24],positions_y[13][0]);
  rect_2(positions_x[0][26],positions_y[13][0]); 
  
  rect_2(positions_x[0][31],positions_y[13][0]); 
  rect_2(positions_x[0][33],positions_y[13][0]); 
  rect_2(positions_x[0][35],positions_y[13][0]); 
  
  // Row 14
  rect_2(positions_x[0][21],positions_y[14][0]);
  rect_2(positions_x[0][23],positions_y[14][0]); 
  rect_2(positions_x[0][25],positions_y[14][0]);
  rect_2(positions_x[0][27],positions_y[14][0]); 
  
  rect_2(positions_x[0][30],positions_y[14][0]); 
  rect_2(positions_x[0][32],positions_y[14][0]); 
  rect_2(positions_x[0][34],positions_y[14][0]); 
  
  
  
}


void draw(){
  draw_board_purple();
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
