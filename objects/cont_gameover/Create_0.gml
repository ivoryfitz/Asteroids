newHighScoreIdx = -1;

ini_open("highscores.ini");
//Initialize HighScore Array
for (var i = 0; i < 11; i++) {
  for (var j = 0; j < 2; j++) {
    tempHighScoreHolder[i, j] = -1;
  }
}
scr_print("Score Holder Init", "Score Array", tempHighScoreHolder);

//Read In Existing Scores, high to low
//Will shove in the new highscore if there is one. All existing scores will move to i + 1.
//Score at tempHighScoreHolder[10] will get dropped as it is no longer a highscore.
for (var i = 0; i < 10; i++) {
  var iNameString = ini_read_string("Names", string(i), "NIL");
  var iScoreString = ini_read_string("Scores", string(i), "NIL");
  if (global.score > real(iScoreString) && newHighScoreIdx < 0) {
    newHighScoreIdx = i;
    tempHighScoreHolder[i, 0] = "___";
    tempHighScoreHolder[i, 1] = string(global.score);
  } 
  if (newHighScoreIdx >= 0) {
    tempHighScoreHolder[i + 1, 0] = iNameString;
    tempHighScoreHolder[i + 1, 1] = iScoreString;
  } else {
    tempHighScoreHolder[i, 0] = iNameString;
    tempHighScoreHolder[i, 1] = iScoreString;
  }
}
scr_print("Existing HighScores", "Score Array", tempHighScoreHolder);

if (newHighScoreIdx >= 0) {
  highscoreNameReader = instance_create_layer(0, 0, "Instances", cont_new_highscore_name_reader);
} else {
  alarm[0] = 60 * 10; 
}

