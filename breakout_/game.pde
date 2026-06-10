void game() {
  background(0);

  // paddle movement
  if (akey) px = px - 5;
  if (dkey) px = px + 5;

  // paddle display
  fill(white);
  circle(px, py, pd);

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

  // bricks
  int i = 0; 
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i = i + 1;
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
  }
}
