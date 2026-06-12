void win() {

  image(gif[f], 0, 0, width, height);
  textAlign(CENTER, CENTER);
  textFont(EclairAuLait);

  fill(brightamberYellow);
  textSize(80);
  text("YOU WIN!", width/2, height/2 - 80);

  fill(white);
  textSize(30);
  text("Click to play again", width/2, height/2 + 40);
}
void resetGame() {
  score = 0;
  lives = 3;
  bx = width/2;
  by = height - 200;
  vx = 0;
  vy = 3;

  int i = 0;
  while (i < n) {
    alive[i] = true;
    i++;
  }
  mode = INTRO;
}
