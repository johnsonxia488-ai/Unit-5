void gameOver() {

  image(gif[f], 0, 0, width, height);
  textAlign(CENTER, CENTER);
  textFont(EclairAuLait);

  fill(brickemberRed);
  textSize(80);
  text("GAME OVER", width/2, height/2 - 80);

  fill(white);
  textSize(30);
  text("Click to restart", width/2, height/2 + 40);
}
void gameoverClicks() {
}
