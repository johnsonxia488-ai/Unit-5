void intro() {
  MUSIC.play(); 
  
  background(255);

  strokeWeight(1);
  fill(0);
  textSize(72);
  text("CLICKER GAME", 400, 350);

  //tactile
  if (mouseX > 300 && mouseX < 650 && mouseY > 500 && mouseY < 550) {
    strokeWeight(10); 
    stroke(255, 0, 0); 
    fill(200);
  } else {
    strokeWeight(2); 
    stroke(0); 
    fill(255); 
  }
}

  void introClicks() {
    mode = GAME;
  }
