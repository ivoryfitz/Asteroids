/// @description Trigger HighScore Save
scr_print("Flushing Highscore File");
for (var i = 0; i < 10; i++) {
  var iNameString = tempHighScoreHolder[i, 0];
  var iScoreString = tempHighScoreHolder[i, 1];
  ini_write_string("Names", string(i), iNameString);
  ini_write_string("Scores", string(i), iScoreString);
}
// The only way to get the file to "flush" is to close it :/
ini_close();
ini_open("highscores.ini");
