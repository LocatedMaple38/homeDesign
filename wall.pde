void wallPlase() { //<>//
  if (wall) {
    if (wall1) {
      itemWallX = expand(itemWallX, wallint + 1);
      itemWallY = expand(itemWallY, wallint + 1);
      itemWallX[wallint] = mouseX;
      itemWallY[wallint] = mouseY;
      wall1 = false;
    } else {
      itemWallWidth = expand(itemWallWidth, wallint + 1);
      itemWallHeight = expand(itemWallHeight, wallint + 1);
      itemWallWidth[wallint] = mouseX;
      itemWallHeight[wallint] = mouseY;
      wall1 = true;
      wallint++;
      if(keyPressed && keyCode == CONTROL){
        itemWallX = expand(itemWallX, wallint + 1);
        itemWallY = expand(itemWallY, wallint + 1);
        itemWallX[wallint] = mouseX;
        itemWallY[wallint] = mouseY;
        wall1 = false;
      }
    }
  }
}

void wallDraw() {
  // Draw all walls up to wallint
  for (int i = 0; i < wallint; i++) {
    fill(0);
    strokeWeight(5);
    line(itemWallX[i], itemWallY[i], itemWallWidth[i], itemWallHeight[i]);
    strokeWeight(1);
    noFill();
  }
}

void wallSetup() {
  itemWallX[0] = 0;
  itemWallY[0] = 0;
  itemWallWidth[0] = 110;
  itemWallHeight[0] = 110;
  wall = false;
  wall1 = true;
}
