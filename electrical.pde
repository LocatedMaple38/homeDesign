void electricalStartup(){
  electricalX = fileWidth;
  electricalY = 0;
  electricalWidth = 50;
  electricalHeight = 15;
  
  switchX = electricalX;
  switchY = electricalHeight*1;
  switchWidth = electricalWidth;
  switchHeight = electricalHeight;
  
  receptacleX = electricalX;
  receptacleY = electricalHeight*2;
  receptacleWidth = electricalWidth;
  receptacleHeight = electricalHeight;
  
  lightX = electricalX;
  lightY = electricalHeight*3;
  lightWidth = electricalWidth;
  lightHeight = electricalHeight;
  
  panelX = electricalX;
  panelY = electricalHeight*4;
  panelWidth = electricalWidth;
  panelHeight = electricalHeight;

  wireX = electricalX;
  wireY = electricalHeight*5;
  wireWidth = electricalWidth;
  wireHeight = electricalHeight;
  
  wire142X = electricalX+electricalWidth;
  wire142Y = electricalHeight*5;
  wire142Width = electricalWidth;
  wire142Height = electricalHeight;

  wire143X = electricalX+electricalWidth;
  wire143Y = electricalHeight*6;
  wire143Width = electricalWidth;
  wire143Height = electricalHeight;
}

void electricalDraw(){
  fill(255);
  rect(electricalX, electricalY, electricalWidth, electricalHeight);
  if(eleck){
    rect(switchX, switchY, switchWidth, switchHeight);
    rect(receptacleX, receptacleY, receptacleWidth, receptacleHeight);
    rect(lightX, lightY, lightWidth, lightHeight);
    rect(panelX, panelY, panelWidth, panelHeight);
    rect(wireX, wireY, wireWidth, wireHeight);
    if(wire){
      rect(wire142X, wire142Y, wire142Width, wire142Height);
      rect(wire143X, wire143Y, wire143Width, wire143Height);
    }
  }
  fill(0);
  text("electrical", electricalX, electricalY, electricalWidth, electricalHeight);
  if(eleck){
    text("Switch", switchX, switchY, switchWidth, switchHeight);
    text("receptale", receptacleX, receptacleY, receptacleWidth, receptacleHeight);
    text("light", lightX, lightY, lightWidth, lightHeight);
    text("panel", panelX, panelY, panelWidth, panelHeight);
    text("wire", wireX, wireY, wireWidth, wireHeight);
    if(wire){
      text("14/2", wire142X, wire142Y, wire142Width, wire142Height);
      text("14/3", wire143X, wire143Y, wire143Width, wire143Height);
    }
  }
  noFill();
  
  if(!eleck){
      wire = false;
  }
}

void electricalMousePressed(){
  if(mouseX>electricalX && mouseX<electricalX+electricalWidth && mouseY>electricalY && mouseY<electricalY+electricalHeight){
    eleck = eleck ? false : true;
    if(eleck){
      file = false;
      net = false;
      plum = false;
      hvac = false;
      build = false;
    }
  }
  if(eleck && mouseX>wireX && mouseX<wireX+wireWidth && mouseY>wireY && mouseY<wireY+wireHeight){
    wire = wire ? false : true;
  }
}

void electricalKeyPressed(){
  if(key == 'e' || key == 'E'){
    eleck = eleck ? false : true;
    if(eleck){
      file = false;
      net = false;
      plum = false;
      hvac = false;
      build = false;
    }
  }
  
  if(eleck && key == 'w' || key == 'W'){
    wire = wire ? false : true;
  }
}
