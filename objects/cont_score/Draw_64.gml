draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (!debug_mode) {
  draw_text(5, 5, "Score: " + string(global.score));
} else {
  draw_set_halign(fa_center);
  draw_text(room_width / 2, 5, "Score: " + string(global.score));
}