///scr_draw_wrap_ghosts()
if (wrapStateX != WRAP_STATE.NONE || wrapStateY != WRAP_STATE.NONE) {
  var ghostShipX = x;
  var ghostShipY = y;
  switch (wrapStateX) {
    case WRAP_STATE.WRAP_LEFT:
      ghostShipX = 0 - sprite_width / 2;
      ghostShipX += abs((room_width - (x + sprite_width / 2)));
      break;
    case WRAP_STATE.WRAP_RIGHT:
      ghostShipX = room_width + sprite_width / 2;
      ghostShipX -= abs(x - sprite_width / 2);
      break;
    default:
      ghostShipX = x;
  }
  
  switch (wrapStateY) {
    case WRAP_STATE.WRAP_TOP:
      ghostShipY = 0 - sprite_height / 2;
      ghostShipY += abs((room_height - (y + sprite_height / 2)));
      break;
    case WRAP_STATE.WRAP_BOTTOM:
      ghostShipY = room_height + sprite_height / 2;
      ghostShipY -= abs(y - sprite_height / 2);
      break;
    default:
      ghostShipY = y;
  }
  draw_sprite_ext(sprite_index, -1, ghostShipX, ghostShipY, 1, 1, image_angle, c_white, 1);
}