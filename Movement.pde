void move(){
  
  float x = 0;
  float y = 0;
  
  if(dir == 0){
    x--;
  }else if(dir == 1){
    y--;
  }else if(dir == 2){
    x++;
  }else if(dir == 3){
    y++;
  }
  
  lastDir = dir;
  
  update(x, y);
  
  
  
}