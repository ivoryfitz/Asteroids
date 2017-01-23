/// @description Draws text that will flash/blink. Handles the alpha changes along with resetting it to opaque
/// @param x x position
/// @param y y position
/// @param string text to draw
/// @param blinkFrequency Speed at which to blink. Lower is faster, higher is slower.

draw_set_alpha((sin(current_time / argument3) + 1) / 2)
draw_text(argument0, argument1, argument2);
draw_set_alpha(1);