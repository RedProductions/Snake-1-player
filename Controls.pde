void keyPressed(){
  
  int tempDir = dir;
  
  if(key == ENTER){
    
    if(starting || dead){
      starting = false;
      dead = false;
      resetgrid();
    }else if(paused){
      paused = false;
    }
    
  }else if(key == BACKSPACE){
    
    paused = !paused;
    
  }else if(key == CODED){
    if(keyCode == LEFT){
      if(dir != 2){
        dir = 0;
      }
    }else if(keyCode == UP){
      if(dir != 3){
        dir = 1;
      }
    }else if(keyCode == RIGHT){
      if(dir != 0){
        dir = 2;
      }
    }else if(keyCode == DOWN){
      if(dir != 1){
        dir = 3;
      }
    }
  }
  
  if(abs(dir-lastDir) == 2){
    dir = tempDir;
  }
  
}


void mousePressed(){
  
  if(dead){
    if(inButton(mouseX, mouseY, deadMessage)){
      dead = false;
      resetgrid();
    }
  }
  
  if(starting){
    if(inButton(mouseX, mouseY, staringMessage)){
      starting = false;
    }
  }
  
  if(paused){
    if(inButton(mouseX, mouseY, pauseMessage)){
      paused = false;
    }
  }
  
}