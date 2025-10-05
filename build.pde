void buildSetup(){
  buildX = hvacX+hvacWidth;
  buildY = 0;
  buildWidth = 50;
  buildHeight = 15;

  wallX = buildX;
  wallY = buildHeight*1;
  wallWidth = buildWidth;
  wallHeight = buildHeight;
  
  roomX = buildX;
  roomY = buildHeight*2;
  roomWidth = buildWidth;
  roomHeight = buildHeight;
  
  doorX = buildX;
  doorY = buildHeight*3;
  doorWidth = buildWidth;
  doorHeight = buildHeight;
  
  windowX = buildX;
  windowY = buildHeight*4;
  windowWidth = buildWidth;
  windowHeight = buildHeight;
}

void buildDraw(){
  fill(255);
  rect(buildX, buildY, buildWidth, buildHeight);
  if(build){
    rect(wallX, wallY, wallWidth, wallHeight);
    rect(roomX, roomY, roomWidth, roomHeight);
    rect(doorX, doorY, doorWidth, doorHeight);
    rect(windowX, windowY, windowWidth, windowHeight);
  }
  fill(0);
  text("bould", buildX, buildY, buildWidth, buildHeight);
  if(build){
    text("wall", wallX, wallY, wallWidth, wallHeight);
    text("room", roomX, roomY, roomWidth, roomHeight);
    text("door", doorX, doorY, doorWidth, doorHeight);
    text("window", windowX, windowY, windowWidth, windowHeight);
  }
  fill(0);
  if(!build){
    wall = false;
  }
}

void buildKeyPressed(){
  if(key == 'B' || key == 'b'){
    build = build ? false : true;
    if(build){
      file = false;
      eleck = false;
      net = false;
      plum = false;
      hvac = false;
    }
  }
}

void buildMousePressed(){
  if(mouseX>buildX && mouseX<buildX+buildWidth && mouseY>buildY && mouseY<buildY+buildHeight){
    build = build ? false : true;
    if(build){
      file = false;
      eleck = false;
      net = false;
      plum = false;
      hvac = false;
    }
  }
  
  if(build && mouseX>wallX && mouseX<wallX+wallWidth && mouseY>wallY && mouseY<wallY+wallHeight){
    wall = wall ? false : true;
  }
}
