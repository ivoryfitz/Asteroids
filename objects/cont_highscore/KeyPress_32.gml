name[nameIdx] = chr(currentAsciiIdx);
nameIdx++;
if(nameIdx == array_length_1d(name)) {
  var nameString = "";
  for (var i = 0; i < array_length_1d(name); i++) {
    nameString += name[i];
  }
  ini_write_string("Scores", string(scoreIdx), string(global.score));
  ini_write_string("Names", string(scoreIdx), nameString);
  cont_gameover.alarm[0] = 60 * 10;
  instance_destroy();
}