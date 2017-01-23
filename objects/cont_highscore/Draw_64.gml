draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_large);
var yPos = room_height / 2 + 200;
if (askForName) {
  draw_text(room_width / 2, room_height / 2 + 100, "New High Score!");
  for(var i = 0; i < 3; i++) {
  var xPos = room_width / 2 - 100 + 100 * i,
    if (name[i] != -1 && i != nameIdx) {
      draw_text(xPos, yPos, name[i]);
    }
    if (i == nameIdx) {
      //Draw blinking
      draw_blink_text(xPos, yPos, chr(currentAsciiIdx), 200);
    }
    draw_text(xPos, yPos + 5, "_");
  }
}
