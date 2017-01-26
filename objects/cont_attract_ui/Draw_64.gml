draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_attract_large);
draw_text(room_width / 2, room_height / 2 - 100, "Asteroids");

draw_set_font(fnt_large);
draw_blink_text(room_width / 2, room_height / 2 + 100, "Space to Start", 350);

draw_set_font(fnt_small);
var xPos = room_width / 2 - 300;
var yPos = room_height / 2 + 200;

for (var i = 0; i < 10; i++) {
  var name = ini_read_string("Names", string(i), "111");
  var scoreString = ini_read_string("Scores", string(i), "AAA");
  var placeString = string(i + 1) + ".";
  if ((i + 1) mod 6 == 0) {
    xPos = room_width / 2 + 100;
    yPos = room_height / 2 + 200;
  }
  draw_set_halign(fa_center);
  var rowXPos = xPos;
  draw_text(rowXPos, yPos, placeString);
  rowXPos += 150;
  draw_set_halign(fa_right);
  draw_text(rowXPos, yPos, scoreString);
  draw_set_halign(fa_left);
  rowXPos += 50;
  draw_text(rowXPos, yPos, name);
  yPos += 25;
}


draw_set_halign(fa_center);
draw_set_font(fnt_small);
var creditString = "Credit to Ozzed.net for Music";
draw_text(room_width / 2, room_height - string_height(creditString), creditString);