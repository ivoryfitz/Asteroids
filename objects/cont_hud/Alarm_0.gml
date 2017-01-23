if (global.score >= scoreToBeat) {
  scoreIdxToBeat--;
  if (scoreIdxToBeat < 0) {
    scoreToBeat = -1; 
  } else {
    ini_open("highscores.ini");
    scoreToBeat = real(ini_read_string("Scores", string(scoreIdxToBeat), 0));
    ini_close();  
  }
}

alarm[0] = 10;