void intro() {
  background(lightseaGreen);

  textSize(80);
  fill(255);
  text("PONG", width/2, 200);

  fill(goldenOrange);
  rect(250, 500, 300, 125);

  fill(grapesodaPurple);
  rect(550, 500, 300, 125);

  fill(255);
  textSize(30);
  text("1 PLAYER", 250, 500);
  text("2 PLAYER", 550, 500);
}
void introClicks() {
  //1 player 
  if (clickOnRect(100, 437, 300, 125)) {
    mode = GAME; 
    MUSIC.pause(); 
    MUSIC.rewind(); 
    AI = true; 
  }
  //2 player 
  if (clickOnRect(400, 437, 300, 125)) {
    mode = GAME; 
    MUSIC.pause(); 
    MUSIC.rewind(); 
    AI = false; 
}
}
boolean clickOnRect( int x, int y, int w, int h){
  return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y+h; 

}
