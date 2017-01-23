draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_small);

var scoreString = "Score: " + string(global.score);
draw_text(5, 5, scoreString);

var scoreToBeatString;
if (scoreToBeat < 0) {
  scoreToBeatString = "Score To Beat: " + string(global.score);
} else {
  scoreToBeatString = "Score To Beat: " + string(scoreToBeat);
}
draw_text(5, 5 + string_height(scoreString), scoreToBeatString);

var livesString = "Lives: " + string(global.lives);
draw_text(5, 5 + string_height(scoreString) + string_height(scoreToBeatString), livesString);
var roundString = "Round " + string(global.clears);
draw_set_halign(fa_center);
draw_text(room_width / 2, 5, roundString);