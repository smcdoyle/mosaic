int[][] grid;

void setup() {
  size(960, 204);
  grid = new int[8][17];
  
  for (int i = 0; i < 8; i++) {
    grid[i][0] = 1;
  }
  grid[0][1] = 1;
  grid[0][2] = 1;
  for (int i = 2; i < 7; i++) {
    grid[i][2] = 2;
  }
  grid[0][3] = 1;
  grid[2][3] = 2;
  grid[6][3] = 2;
  grid[0][4] = 1;
  grid[2][4] = 2;
  grid[4][4] = 1;
  grid[6][4] = 2;
  grid[6][5] = 2;
  for (int i = 0; i < 5; i++) {
    grid[i][6] = 3;
  }
  grid[6][6] = 2;
  grid[6][7] = 2;
  grid[0][8] = 1;
  grid[4][8] = 1;
  grid[6][8] = 2;
  for (int i = 8; i < 15; i++) {
    grid[2][i] = 2;
  }
  grid[0][10] = 3;
  for (int i = 4; i < 8; i++) {
    grid[i][10] = 3;
  }
  grid[0][12] = 1;
  for (int i = 12; i < 17; i++) {
    grid[4][i] = 1;
  }
  grid[6][12] = 2;
  grid[6][13] = 2;
  grid[6][14] = 2;
  grid[0][14] = 2;
  grid[1][14] = 2;
  grid[6][14] = 2;
  grid[7][14] = 2;
  for (int i = 0; i < 8; i++) {
    grid[i][16] = 1;
  }
  
  
  
  noLoop();
}

void draw() {
  noStroke();
  
  for (int t = 0; t < 10; t++) {
    for (int i = 0; i <8; i++) {
      for (int j = 0; j < 17; j++) {
        fill(255, 255, 255);
        
        if (grid[i][j] == 1) {
          fill(0, 0, 128);
        }
  
        if (grid[i][j] == 2) {
          fill(128, 128, 128); 
        }
        
        if (grid[i][j] == 3) {
          fill(128, 0, 0); 
        }
          
        rect(i * 12 + t * (12*8), j * 12, 12, 12);
      }
    }
  }
  
  save("mosaic.png");
}