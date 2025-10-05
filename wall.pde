void wallPlase(){
  if(wall){ //<>//
    if(wall1){
      wallint++;
      wall1 = false;
      expand(itemWallX, wallint);
      expand(itemWallY, wallint);
      itemWallX[wallint] = mouseX;
      itemWallY[wallint] = mouseY;
    }else{
      wall1 = true;
      expand(itemWallWidth, wallint);
      expand(itemWallHeight, wallint);
      itemWallWidth[wallint] = mouseX;
      itemWallHeight[wallint] = mouseY;
    }
  }
}

void wallDraw(){
  for(int i = 0; i < wallint;){
    fill(0);
    line(itemWallX[i], itemWallY[i], itemWallWidth[i], itemWallHeight[i]);
    noFill();
    if(i == wallint){
      continue;
    }else{
      i++;
    }
  }
}

void wallSetup(){
  itemWallX[0] = 0;
  itemWallY[0] = 0;
  itemWallWidth[0] = 110;
  itemWallHeight[0] = 110;
  wall = false;
  wall1 = true;
}
