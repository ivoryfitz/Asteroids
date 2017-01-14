/// @description Ghost Ship for room wrapping
if (x + sprite_width / 2  > room_width) {
  wrapStateX = WRAP_STATE.WRAP_LEFT;
  if (x - sprite_width / 2 > room_width) {
    x = ghostShipX;
    wrapStateX = WRAP_STATE.NONE;
  }
}

if (x - sprite_width / 2  < 0) {
  wrapStateX = WRAP_STATE.WRAP_RIGHT;
  if (x + sprite_width / 2 < 0) {
    x = ghostShipX;
    wrapStateX = WRAP_STATE.NONE;
  }
}

if (x - sprite_width / 2 >= 0 &&
    x + sprite_width / 2 <= room_width) {
  wrapStateX = WRAP_STATE.NONE;
}

if (y + sprite_height / 2 > room_height) {
  wrapStateY = WRAP_STATE.WRAP_TOP;
  if (y - sprite_height / 2 > room_height) {
    y = ghostShipY;
    wrapStateY = WRAP_STATE.NONE;
  }
}

if ( y - sprite_height / 2 < 0) {
  wrapStateY = WRAP_STATE.WRAP_BOTTOM;
  if (y + sprite_height / 2 < 0) {
    y = ghostShipY;
    wrapStateY = WRAP_STATE.NONE;
  }
}

if (y + sprite_height / 2 <= room_height &&
    y - sprite_height / 2 >= 0) {
    wrapStateY = WRAP_STATE.NONE;
}