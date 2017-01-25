draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_large);
var xPos = room_width / 2;
var yPos = room_height / 2;
var newHighScoreString = "New High Score!";
draw_text(xPos, yPos, newHighScoreString);
yPos += string_height(newHighScoreString) + 25;
xPos -= 100;
for(var i = 0; i < 3; i++) {
  if (name[i] != -1 && i != nameIdx) {
    draw_text(xPos, yPos, name[i]);
  }
  if (i == nameIdx) {
    //Draw blinking
    draw_blink_text(xPos, yPos, chr(currentAsciiIdx), 200);
  }
  draw_text(xPos, yPos + 5, "_");
  xPos += 100;
}
