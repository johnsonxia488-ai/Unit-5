void gameover() {
  background(255, 0, 0); 
  MUSIC.pause(); 
  shadowText("GAME OVER", 400, 400, 100); 
  if (score > highscore) {
    highscore = score; 
}
shadowText("High Score. " + highscore, 400, 500, 80); 
}

void gameoverClicks() {
  reset(); 
  mode = INTRO; 
  MUSIC.rewind(); 
}
