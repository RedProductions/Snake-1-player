void setup(){
  
  size(800, 800);
  
  frameRate(120);
  
  noStroke();
  
  resetgrid();
  
  textAlign(LEFT, TOP);
  textSize(15);
  
  colorMode(HSB);
  
}


void draw(){
  
  timeCalc();
  
  if(dead){
    if(inButton(mouseX, mouseY, deadMessage)){
      message(deadMessage, true);
    }else {
      message(deadMessage, false);
    }
  }else if(starting){
    if(inButton(mouseX, mouseY, staringMessage)){
      message(staringMessage, true);
    }else {
      message(staringMessage, false);
    }
  }else if(paused){
    if(inButton(mouseX, mouseY, pauseMessage)){
      message(pauseMessage, true);
    }else {
      message(pauseMessage, false);
    }
  }
  
  canPlay = !(dead || starting || paused);
  
  if(canPlay){
    if(currentTime - lastRefreshed >= refreshRate){
      lastRefreshed = currentTime;
      showAll();
    }
    
    if(currentTime - lastMoved >= speed){
      lastMoved = currentTime;
      move();
    }
  }
  
}