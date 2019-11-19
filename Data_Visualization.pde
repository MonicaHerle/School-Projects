void setup() {
  size(200, 200);

  int x;
  
  int [][] arr = {{0, 1, 0, 1, 1},
                  {1, 0, 1, 0},
                  {0, 1},
                  {1, 0, 1, 1, 0, 0},
                  {0, 0, 1},
                  {1, 1, 1, 0, 0}};

  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr[i].length; j++) {
      x = arr[i][j];
      if(x == 1) {
        fill(255);
      } else {
        fill(0);
      }
      rect(j * 20 + 40, i * 20 + 40, 20, 20);
    }
  }
}
