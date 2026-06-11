void game() {
  background(0);

  //scoreboard (bottom bar)
  fill(0);
  rectMode(CORNER);
  rect(0, height - 60, width, 60);

  textFont(EclairAuLait);
  textSize(30);
  textAlign(LEFT, CENTER);

  fill(paleskyBlue);
  text("Score: " + score, 50, height - 30);

  textAlign(RIGHT, CENTER);
  fill(brightamberYellow);
  text("Lives: " + lives, width - 50, height - 30);

  // paddle movement
  if (akey) px = px - 5;
  if (dkey) px = px + 5;

  if (px < pd/2) {
  px = pd/2;
  }
  if (px > width - pd/2) {
  px = width - pd/2;
  }
  // paddle display
  noStroke(); 
  fill(white);
  arc(px, py, pd, pd, PI, TWO_PI);
  // move ball
  bx = bx + vx; 
  by = by + vy; 
  // wall bounce
  if (bx < bd/2 || bx > width - bd/2) {
    vx = vx * -1;
  }
  if (by < bd/2) {
    vy = vy * -1;
  }
  // paddle collision
  if (dist(bx, by, px, py) < bd/2 + pd/2) {
    vx = (bx - px) / 10;
    vy = (by - py) / 10;
  }
  // ball draw
  fill(white);
  circle(bx, by, bd);
  // lose life
  if (by > height) {
    lives = lives - 1;
    bx = width/2;
    by = height - 200;
    vx = 0;
    vy = 3;
  }
  // bricks
  int i = 0; 
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i = i + 1;
  }
  int aliveCount = 0;

  int j = 0;
  while (j < n) {
  if (alive[j] == true) {
    aliveCount = aliveCount + 1;
  }
  j = j + 1;
}

if (aliveCount == 0) {
  mode = WIN;
}
  // game over
  if (lives <= 0) {
    mode = GAMEOVER;
  }
}
void manageBrick(int i) {

  if (y[i] == 100) fill(paleskyBlue); 
  else if (y[i] == 200) fill(brightamberYellow); 
  else if (y[i] == 300) fill(goldenOrange); 
  else if (y[i] == 400) fill(grapesodaPurple); 
  else fill(white);

  circle(x[i], y[i], brickd); 

  if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) {
    vx = (bx - x[i]) / 10; 
    vy = (by - y[i]) / 10;
    alive[i] = false; 
    score = score + 1;
  }
}
