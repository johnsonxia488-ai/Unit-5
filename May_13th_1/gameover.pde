void gameover() {
  background(255, 0, 0); 
  MUSIC.pause(); 
  text("GAME OVER", 400, 400); 
}

void gameoverClicks() {
  mode = INTRO; 
  MUSIC.rewind(); 
}
