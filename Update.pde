void update(float x, float y){
  
  for(int i = score; i > 0; i--){
    
    snakex[i] = snakex[i-1];
    snakey[i] = snakey[i-1];
    
  }
  
  snakex[0] += x;
  snakey[0] += y;
  
  if(snakex[0] >= lenx || snakex[0] < 0){
    dead = true;
  }
  if(snakey[0] >= leny || snakey[0] < 0){
    dead = true;
  }
  
  for(int i = 0; i < lenx; i++){
    for(int j = 0; j < leny; j++){
      
      grid[i][j] = 0;
      
    }
  }
  
  grid[pointx][pointy] = 1;
  
  
  for(int i = 0; i < lenx*leny; i++){
    
    if(snakex[i] != -1 && snakey[i] != -1 && !dead){
      grid[snakex[i]][snakey[i]] = 2;
    }
    
  }
  
  
  if(snakex[0] == pointx && snakey[0] == pointy){
    score++;
    speed *= speedRatio;
    if(speed < 5){
      speed = 5;
    }
    createpoint();
  }
  
  for(int i = 1; i < lenx*leny; i++){
    if(snakex[0] == snakex[i] && snakey[0] == snakey[i]){
      dead = true;
    }
  }
  
  hx = snakex[0];
  hy = snakey[0];
  deadMessage = "GAME OVER  Score: " + score;
  
}