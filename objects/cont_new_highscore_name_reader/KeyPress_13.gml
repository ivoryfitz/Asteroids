name[nameIdx] = chr(currentAsciiIdx);
nameIdx++;
if(nameIdx == array_length_1d(name) && !savingHighScore) {
  savingHighScore = true;
  var nameString = "";
  for (var i = 0; i < array_length_1d(name); i++) {
    nameString += name[i];
  }
  cont_gameover.alarm[0] = 60 * 10;
  cont_gameover.tempHighScoreHolder[cont_gameover.newHighScoreIdx, 0] = nameString
  cont_gameover.newHighScoreIdx = -1;
  with (cont_gameover) event_user(0);
  instance_destroy();
}