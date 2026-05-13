void game() {
background(0, 255, 0); 
//music 
MUSIC.play(); 
//pause button 
stroke(0); 
fill(255); 
circle(100, 100, 100); 

text("Score: " + score, width/2, 50); 
text("Lives: " + lives, width/2, 100); 
//display target
fill(255); 
stroke(0); 
strokeWeight(5); 
circle(x, y, d);

//moving 
x = x + vx; 
y = y + vy; 

//bouncing 
if (x < d/2 || x > width - d/2) {
  vx = vx * -1; 
}
if (y < d/2 || y > height - d/2) {
  vy = vy * -1; 
}
}
void gameClicks() {
  if ( dist(mouseX, mouseY, x, y) < d/2) { 
  score = score + 1; 
  SUCCESS.rewind(); 
  SUCCESS.play(); 
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE; 
  } else { 
    lives = lives - 1;
    FAILURE.rewind();
    FAILURE.play(); 
    if (lives == 0)mode = GAMEOVER; 
}
}
