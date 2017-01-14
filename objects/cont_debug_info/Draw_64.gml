var wrapStateXStr = "wrapStateX: ";
var wrapStateYStr = "wrapStateY: ";

switch (obj_player.wrapStateX) {
  case WRAP_STATE.WRAP_LEFT:
    wrapStateXStr += "WRAP_LEFT";
    break;
  case WRAP_STATE.WRAP_RIGHT:
    wrapStateXStr += "WRAP_RIGHT";
    break;
  case WRAP_STATE.NONE:
    wrapStateXStr += "NONE";
    break;
}

switch (obj_player.wrapStateY) {
  case WRAP_STATE.WRAP_TOP:
    wrapStateYStr += "WRAP_TOP";
    break;
  case WRAP_STATE.WRAP_BOTTOM:
    wrapStateYStr += "WRAP_BOTTOM";
    break;
  case WRAP_STATE.NONE:
    wrapStateYStr += "NONE";
    break;
}

var drawUs = [
  wrapStateXStr,
  wrapStateYStr,
  "GhostX: " + string(obj_player.ghostShipX),
  "GhostY: " + string(obj_player.ghostShipY),
  "RealX: " + string(obj_player.x),
  "RealY: " + string(obj_player.y)
];
var previousTextHeight = 0;

for (var idx = 0; idx < array_length_1d(drawUs); idx++) {
  draw_text(0, previousTextHeight, drawUs[idx]);
  previousTextHeight += string_height(drawUs[idx]);
}
