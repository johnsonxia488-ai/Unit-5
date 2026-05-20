void options() {
  background(255); 
  //happy face button
  tactile(100, 0, 100, 80); 
  face_HAPPYOnOff(); 
  rect(100, 0, 100, 80); 
  image(face_Happy, 100, 0, 100, 80); 
  
  //sad face buttton
  tactile(200, 0, 100, 80); 
  face_SADOnOFF(); 
  rect(200, 0, 100, 80); 
  image(face_SAD, 200, 0, 100, 80); 
  
  
  
}
void optionsClicks() {
}
