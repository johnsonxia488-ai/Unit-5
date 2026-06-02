void gameover() { 
  background(0);

  textAlign(CENTER);
  textSize(60);

  if (leftscore > rightscore) {
    fill(goldenOrange);
    text("LEFT WINS!", width/2, height/2);
  } else {
    fill(grapesodaPurple);
    text("RIGHT WINS!", width/2, height/2);
  }

  textSize(25);
  fill(255);
  text("RESTART", width/2, height/2 + 80);
}
void gameoverClicks() {

  leftscore = 0;
  rightscore = 0;

  ballx = width/2;
  bally = height/2;

  vx = 5;
  vy = 3;
}
