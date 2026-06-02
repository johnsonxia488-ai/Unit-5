void keyPressed() {
  if (key == 'w' || key == 'w') wkey = true;  
  if (key == 's' || key == 's') skey = true;  
  if (keyCode == UP) upkey     = true; 
  if (keyCode == DOWN) downkey = true; 
}
void keyReleased() {
  if (key == 'w' || key == 'w') wkey = false;  
  if (key == 's' || key == 's') skey = false;
  if (keyCode == UP) upkey     = false; 
  if (keyCode == DOWN) downkey = false; 
}
