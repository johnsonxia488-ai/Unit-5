void intro() {
}
void introClicks() {
  //1 player 
  if (clickOnRect(200, 500, 300, 125)) {
    mode = GAME; 
    intro.pause(); 
    intro.rewind(); 
    AI = true; 
  }
  //2 player 
  if (clickOnRect(100, 500, 300, 125)) {
    mode = GAME; 
    intro.pause(); 
    introrewind(); 
    AI = false; 
}
}
