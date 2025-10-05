float fileX, fileY, fileHeight, fileWidth;
float fileSaveX, fileSaveY, fileSaveWidth, fileSaveHeight;
float fileSaveAsX, fileSaveAsY, fileSaveAsWidth, fileSaveAsHeight;
float fileLoadX, fileLoadY, fileLoadWidth, fileLoadHeight;
boolean file;

float buildX, buildY, buildWidth, buildHeight;
float wallX, wallY, wallWidth, wallHeight;
float roomX, roomY, roomWidth, roomHeight;
float doorX, doorY, doorWidth, doorHeight;
float windowX, windowY, windowWidth, windowHeight;
boolean build, wall, wall1;

float electricalX, electricalY, electricalWidth, electricalHeight;
float switchX, switchY, switchWidth, switchHeight;
float receptacleX, receptacleY, receptacleWidth, receptacleHeight;
float lightX, lightY, lightWidth, lightHeight;
float panelX, panelY, panelWidth, panelHeight;
float wireX, wireY, wireWidth, wireHeight;
float wire142X, wire142Y, wire142Width, wire142Height;
float wire143X, wire143Y, wire143Width, wire143Height;
boolean eleck, wire;

float networkingX, networkingY, networkingWidth, networkingHeight;
float copperX, copperY, copperWidth, copperHeight;
float cat5X, cat5Y, cat5Width, cat5Height;
float cat5aX, cat5aY, cat5aWidth, cat5aHeight;
float cat6X, cat6Y, cat6Width, cat6Height;
float cat6aX, cat6aY, cat6aWidth, cat6aHeight;
float cat7X, cat7Y, cat7Width, cat7Height;
float fiberX, fiberY, fiberWidth, fiberHeight;
float om3X, om3Y, om3Width, om3Height;
float om4X, om4Y, om4Width, om4Height;
float keyStoneX, keyStoneY, keyStoneWidth, keyStoneHeight;
float singlePortX, singlePortY, singlePortWidth, singlePortHeight;
float dulePortX, dulePortY, dulePortWidth, dulePortHeight;
float tryPortX, tryPortY, tryPortWidth, tryPortHeight;
float quadPortX, quadPortY, quadPortWidth, quadPortHeight;
boolean net, copper, fiber, keyStone;

float plummingX, plummingY, plummingWidth, plummingHeihgt;
float hotWaterX, hotWaterY, hotWaterWidth, hotWaterHeight;
float coldWaterX, coldWaterY, coldWaterWidth, coldWaterHeight;
float sewerX, sewerY, sewerWidth, sewerHeight;
boolean plum;

float hvacX, hvacY, hvacWidth, hvacHeight;
float regesterX, regesterY, regesterWidth, regesterHeight;
float ducktX, ducktY, ducktWidth, ducktHeight;
boolean hvac;

int backfround = #aaaaaa;

int wallint = 1;
float[] itemWallX = new float[wallint], itemWallY = new float[wallint], itemWallWidth = new float[wallint], itemWallHeight = new float[wallint];

void setup(){
  size(500, 500);
  
  fileStartup();
  electricalStartup();
  networkingSetup();
  plummingSetup();
  hvacSetup();
  buildSetup();
  wallSetup();
}

void draw(){
  fill(backfround);
  rect(0, 0, displayWidth, displayHeight);
  noFill();
  
  fileDraw();
  electricalDraw();
  networkingDraw();
  plummingDraw();
  hvacDraw();
  buildDraw();
  wallDraw();
}

void keyPressed(){
  fileKeyPressed();
  electricalKeyPressed();
  networkingKeyPressed();
  plummingKeyPessed();
  hvacKeyPressed();
  buildKeyPressed();
}

void mousePressed(){
  fileMousePressed();
  electricalMousePressed();
  networkingMousePressed();
  plummingMousePressed();
  hvacMousePressed();
  buildMousePressed();
  wallPlase();
}
