void hvacSetup(){
  hvacX = plummingX+plummingWidth;
  hvacY = 0;
  hvacWidth = 50;
  hvacHeight = 15;
  
  regesterX = hvacX;
  regesterY = hvacHeight*1;
  regesterWidth = hvacWidth;
  regesterHeight = hvacHeight;
  
  ducktX = hvacX;
  ducktY = hvacHeight*2;
  ducktWidth = hvacWidth;
  ducktHeight =hvacHeight;
}

void hvacDraw(){
  fill(255);
  rect(hvacX, hvacY, hvacWidth, hvacHeight);
  if(hvac){
    rect(regesterX, regesterY, regesterWidth, regesterHeight);
    rect(ducktX, ducktY, ducktWidth, ducktHeight);
  }
  fill(0);
  text("hvac", hvacX, hvacY, hvacWidth, hvacHeight);
  if(hvac){
    text("regester", regesterX, regesterY, regesterWidth, regesterHeight);
    text("duckt", ducktX, ducktY, ducktWidth, ducktHeight);
  }
}

void hvacKeyPressed(){
  if(key == 'h' || key == 'H'){
    hvac = hvac ? false : true;
    if(hvac){
      file = false;
      eleck = false;
      net = false;
      plum = false;
      build = false;
    }
  }
}

void hvacMousePressed(){
  if(mouseX>hvacX &&  mouseX<hvacX+hvacWidth && mouseY>hvacY && mouseY<hvacY+hvacHeight){
    hvac = hvac ? false : true;
    if(hvac){
      file = false;
      eleck = false;
      net = false;
      plum = false;
      build = false;
    }
  }
}
