draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_large);
draw_text(room_width / 2, room_height / 2 - 100, "Game Over");
draw_set_font(fnt_small);
draw_text(room_width / 2, room_height - 50, "Press 'R' to restart!");




draw_set_font(fnt_small);
var xPos = room_width / 2 - 300;
var yPos = room_height / 2 + 200;

for (var i = 0; i < 10; i++) {
  var nameStringToDraw = tempHighScoreHolder[i, 0];
  var scoreStringToDraw = tempHighScoreHolder[i, 1];
  var placeStringToDraw = string(i + 1) + ".";
  if ((i + 1) mod 6 == 0) {
    xPos = room_width / 2 + 100;
    yPos = room_height / 2 + 200;
  }
  draw_set_halign(fa_center);
  var rowXPos = xPos;
  draw_text(rowXPos, yPos, placeStringToDraw);
  rowXPos += 150;
  draw_set_halign(fa_right);
  draw_text(rowXPos, yPos, scoreStringToDraw);
  draw_set_halign(fa_left);
  rowXPos += 50;
  if(i == newHighScoreIdx) {
    var typingRowXPos = rowXPos;
    for(var j = 0; j < 3; j++) {
      if (highscoreNameReader.name[j] != -1 && j != highscoreNameReader.nameIdx) {
        draw_text(typingRowXPos, yPos, highscoreNameReader.name[j]);
      }
      if (j == highscoreNameReader.nameIdx) {
        draw_blink_text(typingRowXPos, yPos, chr(highscoreNameReader.currentAsciiIdx), 200);
      }
      draw_text(typingRowXPos, yPos + 5, "_");
      typingRowXPos += string_width("_") + 2;
    }
  } else {
    draw_text(rowXPos, yPos, nameStringToDraw);
  }
  yPos += 25;
}