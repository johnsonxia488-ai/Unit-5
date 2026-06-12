void intro() {

  //background
  image(gif[f], 0, 0, width, height);

  //title
  textAlign(CENTER, CENTER);
  textFont(EclairAuLait);
  textSize(100);
  fill(white);
  text("BREAKOUT", width/2, 220);

  //play button
  rectMode(CENTER);
  fill(white);
  stroke(0);
  strokeWeight(3);
  rect(width/2, 500, 250, 100, 20);

  fill(0);
  textSize(40);
  text("PLAY", width/2, 495);
}

void introClicks() {
  if (mouseX > width/2 - 125 &&
      mouseX < width/2 + 125 &&
      mouseY > 450 &&
      mouseY < 550) {
    mode = GAME;
  }

}
