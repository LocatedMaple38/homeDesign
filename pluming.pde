void plummingSetup(){
  plummingX = networkingX+networkingWidth;
  plummingY = 0;
  plummingWidth = 60; 
  plummingHeihgt = 15;
  
  hotWaterX = plummingX;
  hotWaterY = plummingHeihgt*1;
  hotWaterWidth = plummingWidth;
  hotWaterHeight = plummingHeihgt;
  
  coldWaterX = plummingX;
  coldWaterY = plummingHeihgt*2;
  coldWaterWidth = plummingWidth;
  coldWaterHeight = plummingHeihgt;
  
  sewerX = plummingX;
  sewerY = plummingHeihgt*3;
  sewerWidth = plummingWidth;
  sewerHeight = plummingHeihgt;
}

void plummingDraw(){
  fill(255);
  rect(plummingX, plummingY, plummingWidth, plummingHeihgt);
  if(plum){
    rect(hotWaterX, hotWaterY, hotWaterWidth, hotWaterHeight);
    rect(coldWaterX, coldWaterY, coldWaterWidth, coldWaterHeight);
    rect(sewerX, sewerY, sewerWidth, sewerHeight);
  }
  fill(0);
  text("plumming", plummingX, plummingY, plummingWidth, plummingHeihgt);
  if(plum){
    text("hot water", hotWaterX, hotWaterY, hotWaterWidth, hotWaterHeight);
    text("cold water", coldWaterX, coldWaterY, coldWaterWidth, coldWaterHeight);
    text("sewer", sewerX, sewerY, sewerWidth, sewerHeight);
  }
}

void plummingKeyPessed(){
  if(key == 'p' || key == 'P'){
    plum = plum ? false : true;
    if(plum){
      file = false;
      eleck = false;
      net = false;
      hvac = false;
      build = false;
    }
  }
}

void plummingMousePressed(){
  if(mouseX>plummingX && mouseX<plummingX+plummingWidth && mouseY>plummingY && mouseY<plummingY+plummingHeihgt){
    plum = plum ? false : true;
    if(plum){
      file = false;
      eleck = false;
      net = false;
      hvac = false;
      build = false;
    }
  }
}
