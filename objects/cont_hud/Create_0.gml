scoreIdxToBeat = 9;
scoreToBeat = -1;

ini_open("highscores.ini");
scoreToBeat = real(ini_read_string("Scores", string(scoreIdxToBeat), 0));
ini_close();

alarm[0] = 10;