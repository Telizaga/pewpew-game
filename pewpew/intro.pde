void intro() {

  background(0);
  
  //text title
  
  textSize(100);
  fill(204,105,232);
  text("PEW PEW", width/2+shadowOffset, height/4+shadowOffset);
  fill(243,198,255);
  text("PEW PEW", width/2, height/4);
}

void introClicks() {
  mode = GAME;
}
