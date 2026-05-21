void intro() {
  MUSIC.rewind();

  background(255);

  strokeWeight(1);
  fill(0);
  textSize(100);
  text("CLICKER GAME", 400, 200);

  strokeWeight(1);
  fill(0);
  textSize(66);
  text("START", 400, 380);

  strokeWeight(1);
  fill(0);
  textSize(66);
  text("OPTIONS", 400, 500);

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
  if (mouseX > 300 && mouseX < 650 && mouseY > 500 && mouseY < 550) {
    mode = OPTIONS;
  } else if (mouseX > 300 && mouseX < 650 && mouseY > 350 && mouseY < 400) {
    mode = GAME;
  }
}
