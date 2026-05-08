void intro() {
  background(255); 
  
  strokeWeight(1); 
  fill(0);
  textSize(72); 
  text("CLICKER GAME", 400, 400); 

  //tactile
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
  fill(200); 
} else {
}

void introClicks() {
  mode = GAME; 
}
