void mouseReleased() {

  if (mode == GAMEOVER || mode == WIN) {
    resetGame();
  }

  if (mode == INTRO) {
    introClicks();
  }
}
