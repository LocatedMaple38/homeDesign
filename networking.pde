void networkingSetup(){
  networkingX = electricalX+electricalWidth;
  networkingY = 0;
  networkingWidth = 60;
  networkingHeight = 15;

  copperX = networkingX;
  copperY = networkingHeight*1;
  copperWidth = networkingWidth;
  copperHeight = networkingHeight;
  
  cat5X = networkingX+copperWidth;
  cat5Y = networkingHeight*1;
  cat5Width = networkingWidth;
  cat5Height = networkingHeight;
  
  cat5aX = networkingX+copperWidth;
  cat5aY = networkingHeight*2;
  cat5aWidth = networkingWidth;
  cat5aHeight = networkingHeight;
  
  cat6X = networkingX+copperWidth;
  cat6Y = networkingHeight*3;
  cat6Width = networkingWidth;
  cat6Height = networkingHeight;
  
  cat6aX = networkingX+copperWidth;
  cat6aY = networkingHeight*4;
  cat6aWidth = networkingWidth;
  cat6aHeight = networkingHeight;
  
  cat7X = networkingX+copperWidth;
  cat7Y = networkingHeight*5;
  cat7Width = networkingWidth;
  cat7Height = networkingHeight;
  
  fiberX = networkingX;
  fiberY = networkingHeight*2;
  fiberWidth = networkingWidth;
  fiberHeight = networkingHeight;
  
  om3X = networkingX+fiberWidth;
  om3Y = networkingHeight*2;
  om3Width = networkingWidth;
  om3Height = networkingHeight;

  om4X = networkingX+fiberWidth;
  om4Y = networkingHeight*3;
  om4Width = networkingWidth;
  om4Height = networkingHeight;
  
  keyStoneX = networkingX;
  keyStoneY = networkingHeight*3;
  keyStoneWidth = networkingWidth;
  keyStoneHeight = networkingHeight;
  
  singlePortX = networkingX+networkingWidth;
  singlePortY = networkingHeight*3;
  singlePortWidth = networkingWidth;
  singlePortHeight = networkingHeight;
  
  dulePortX = networkingX+networkingWidth;
  dulePortY = networkingHeight*4;
  dulePortWidth = networkingWidth;
  dulePortHeight = networkingHeight;
  
  tryPortX = networkingX+networkingWidth;
  tryPortY = networkingHeight*5;
  tryPortWidth = networkingWidth;
  tryPortHeight = networkingHeight;
  
  quadPortX = networkingX+networkingWidth;
  quadPortY = networkingHeight*6;
  quadPortWidth = networkingWidth;
  quadPortHeight = networkingHeight;
}

void networkingDraw(){
  fill(255);
  rect(networkingX, networkingY, networkingWidth, networkingHeight);
  if(net){
    rect(copperX, copperY, copperWidth, copperHeight);
    rect(fiberX, fiberY, fiberWidth, fiberHeight);
    rect(keyStoneX, keyStoneY, keyStoneWidth, keyStoneHeight);
    if(copper){
      rect(cat5X, cat5Y, cat5Width, cat5Height);
      rect(cat5aX, cat5aY, cat5aWidth, cat5aHeight);
      rect(cat6X, cat6Y, cat6Width, cat6Height);
      rect(cat6aX, cat6aY, cat6aWidth, cat6aHeight);
      rect(cat7X, cat7Y, cat7Width, cat7Height);
    }
    if(fiber){
      rect(om3X, om3Y, om3Width, om3Height);
      rect(om4X, om4Y, om4Width, om4Height);
    }
    if(keyStone){
      rect(singlePortX, singlePortY, singlePortWidth, singlePortHeight);
      rect(dulePortX, dulePortY, dulePortWidth, dulePortHeight);
      rect(tryPortX, tryPortY, tryPortWidth, tryPortHeight);
      rect(quadPortX, quadPortY, quadPortWidth, quadPortHeight);
    }
  }
  fill(0);
  text("networking", networkingX, networkingY, networkingWidth, networkingHeight);
  if(net){
    text("copper", copperX, copperY, copperWidth, copperHeight);
    text("fiber", fiberX, fiberY, fiberWidth, fiberHeight);
    text("keyStone", keyStoneX, keyStoneY, keyStoneWidth, keyStoneHeight);
    if(copper){
      text("cat 5", cat5X, cat5Y, cat5Width, cat5Height);
      text("cat 5a", cat5aX, cat5aY, cat5aWidth, cat5aHeight);
      text("cat 6", cat6X, cat6Y, cat6Width, cat6Height);
      text("cat 6a", cat6aX, cat6aY, cat6aWidth, cat6aHeight);
      text("cat 7", cat7X, cat7Y, cat7Width, cat7Height);
    }
    if(fiber){
      text("om 3", om3X, om3Y, om3Width, om3Height);
      text("om 4", om4X, om4Y, om4Width, om4Height);
    }
    if(keyStone){
      text("single", singlePortX, singlePortY, singlePortWidth, singlePortHeight);
      text("dule", dulePortX, dulePortY, dulePortWidth, dulePortHeight);
      text("try", tryPortX, tryPortY, tryPortWidth, tryPortHeight);
      text("quad", quadPortX, quadPortY, quadPortWidth, quadPortHeight);
    }
  }
  noFill();
  if(!net){
    copper = false;
    fiber = false;
    keyStone = false;
  }
}

void networkingKeyPressed(){
  if(key == 'n' || key == 'N'){
    net = net ? false : true;
    if(net){
      file = false;
      eleck = false;
      plum = false;
      hvac = false;
      build = false;
    }
  }
  
  if(net && key == 'c' || key == 'C'){
    copper = copper ? false : true;
    if(copper){
      fiber = false;
      keyStone = false;
    }
  }
  
  if(net && key == 'i' || key == 'I'){
    fiber = fiber ? false : true;
    if(fiber){
      copper = false;
      keyStone = false;
    }
  }
  if(net && key == 'k' || key == 'K'){
    keyStone = keyStone ? false : true;
    if(keyStone){
      copper = false;
      fiber = false;
    }
  }
}

void networkingMousePressed(){
  if(mouseX>networkingX && mouseX<networkingX+networkingWidth && mouseY>networkingY && mouseY<networkingY+networkingHeight){
    net = net ? false : true;
    if(net){
      file = false;
      eleck = false;
      plum = false;
      hvac = false;
      build = false;
    }
  }
  if(net && mouseX>copperX && mouseX<copperX+copperWidth && mouseY>copperY && mouseY<copperY+copperHeight){
    copper = copper ? false : true;
    if(copper){
      fiber = false;
      keyStone = false;
    }
  }
  if(net && mouseX>fiberX && mouseX<fiberX+fiberWidth && mouseY>fiberY && mouseY<fiberY+fiberHeight){
    fiber = fiber ? false : true;
    if(fiber){
      copper = false;
      keyStone = false;
    }
  }
  if(net && mouseX>keyStoneX && mouseX<keyStoneX+keyStoneWidth && mouseY>keyStoneY && mouseY<keyStoneY+keyStoneHeight){
    keyStone = keyStone ? false : true;
    if(keyStone){
      copper = false;
      fiber = false;
    }
  }
}
