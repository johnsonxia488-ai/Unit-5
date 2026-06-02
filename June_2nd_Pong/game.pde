void game() {
  background(lightseaGreen);

  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //scoreboard
  textSize(50);
  fill(paleskyBlue);
  text(leftscore, width/4, 100);
  fill(brightamberYellow);
  text(rightscore, 3*width/4, 100);

  //draw paddles
  fill(goldenOrange);
  circle(leftx, lefty, leftd);

  fill(grapesodaPurple);
  circle(rightx, righty, rightd);

  //draw ball
  fill(brickemberRed);
  circle(ballx, bally, balld);

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {
     if (ballx > width/2) {
    if (bally < righty) righty = righty - 4;
    if (bally > righty) righty = righty + 4;
  } 
  }
  // left limits
  if (lefty < leftd/2) {
    lefty = leftd/2;
  }
  if (lefty > height - leftd/2) {
    lefty = height - leftd/2;
  }

  // right paddle limits
  if (righty < rightd/2) {
    righty = rightd/2;
  }
  if (righty > height - rightd/2) {
    righty = height - rightd/2;
  }
  //move ball
  ballx = ballx + vx;
  bally = bally + vy;

  wallBounce();
  //paddle collisions
  paddleCollision();

  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    vx = 3;
    vy = 3;
  }

  if (ballx > width) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    vx = -3;
    vy = 3;
  }
}
void paddleCollision() {
  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2+5) {
    vx = speed;
    vy = (bally - lefty) / 10;
  }
  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2+5) {
    vx = -speed;
    vy = (bally - righty) /10;
  }
}
void wallBounce() {
  //top
  if (bally - balld/2 <=0) {
    bally = balld/2;
    vy = -vy;
  }
  //bottom
  if (bally + balld/2 >=height) {
    bally = height - balld/2;
    vy = -vy;
  }
}
void gameClicks() {
}
