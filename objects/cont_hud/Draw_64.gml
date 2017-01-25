draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_small);

//current score top left
var scoreString = string(global.score);
draw_text(5, 5, scoreString);

//High Score topright
var scoreToBeatString;
if (scoreToBeat < 0) {
  scoreToBeatString = string(global.score);
} else {
  scoreToBeatString = string(scoreToBeat);
}
draw_set_halign(fa_right);
draw_text(room_width - 5, 5, scoreToBeatString);


var roundString = "Round " + string(global.clears + 1);
draw_set_halign(fa_center);
draw_text(room_width / 2, 5, roundString);