name = [-1, -1, -1];
nameIdx = 0;
scoreIdx = 5;
currentAsciiIdx = 65;
askForName = false;
ini_open("highscore.ini");
if (!ini_section_exists("Scores")) {
  scoreIdx = 0;
} else {
  for (var i = 9; i >= 0; i--) {
    var highScore = ini_read_real("Scores", string(i), -1);
    if (global.score > highScore) {
      scoreIdx = i;
    } else {
      break;
    }
  } 
}
