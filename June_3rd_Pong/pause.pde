void pause() {
//music
fill(0); 
MUSIC.pause(); 
text("PAUSE", 400, 400); 
} 
void pauseClicks() {
  if(dist(mouseX, mouseY, 100, 100) < 50) {
    mode = GAME; 
}
}
