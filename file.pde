void fileStartup(){
  fileX = 0;
  fileY = 0;
  fileWidth = 40;
  fileHeight = 15;
  
  fileSaveX = 0;
  fileSaveY = fileHeight*1;
  fileSaveWidth = fileWidth;
  fileSaveHeight = fileHeight;
  
  fileSaveAsX = 0;
  fileSaveAsY = fileHeight*2;
  fileSaveAsWidth =   fileWidth;
  fileSaveAsHeight = fileHeight;
  
  fileLoadX = 0;
  fileLoadY = fileHeight*3;
  fileLoadWidth =   fileWidth;
  fileLoadHeight = fileHeight;
}

void fileDraw(){
  fill(255);
  rect(fileX, fileY, fileWidth, fileHeight);
  if(file){
    rect(fileSaveX, fileSaveY, fileSaveWidth, fileSaveHeight);
    rect(fileSaveAsX, fileSaveAsY, fileSaveAsWidth, fileSaveAsHeight);
    rect(fileLoadX, fileLoadY, fileLoadWidth, fileLoadHeight);
  }
  fill(0);
  text("file", fileX, fileY, fileWidth, fileHeight);
  if(file){
    text("save", fileSaveX, fileSaveY, fileSaveWidth, fileSaveHeight);
    text("save as", fileSaveAsX, fileSaveAsY, fileSaveAsWidth, fileSaveAsHeight);
    text("load", fileLoadX, fileLoadY, fileLoadWidth, fileLoadHeight);
  }
  noFill();
}

void fileKeyPressed(){
  if(key == 'f' || key == 'F'){
    file = file ? false : true;
    if(file){
      eleck = false;
      net = false;
      plum = false;
      hvac = false;
      build = false;
    }
  }
}

void fileMousePressed(){
  if(mouseX>fileX && mouseX<fileX+fileHeight && mouseY>fileY && mouseY<fileY+fileWidth){
    file = file ? false : true;
    if(file){
      eleck = false;
      net = false;
      plum = false;
      hvac = false;
      build = false;
    }
  }
}
