void showAll(){
  
  background(255);
  strokeWeight(2);
  
  for(int i = 0; i < lenx; i++){
    for(int j = 0; j < leny; j++){
      
      float x = width/float(lenx);
      float y = height/float(leny);
      
      if(grid[i][j] != 0){
        
        if(grid[i][j] == 1){
          fill(195, 255, 255);
        }else if(grid[i][j] == 2){
          
          if(i == hx && j == hy){
            fill(0, 255, 255);
          }else {
            fill(85, 255, 255);
          }
          
        }
        
        stroke(0);
        rect(float(i) * x, float(j) * y, x, y);
        
      }
      
    }
  }
  
}