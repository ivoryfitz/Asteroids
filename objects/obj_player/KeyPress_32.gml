var xOffset = lengthdir_x(sprite_xoffset, image_angle);
var yOffset = lengthdir_y(sprite_yoffset, image_angle);
//This if-statement is so only the real/ghost ship whose cone is pointed into the room can shoot
if (point_in_rectangle(x + xOffset, y + yOffset, 0, 0, room_width, room_height)){
  var bullet = instance_create_layer(x + xOffset, y + yOffset, "Instances", obj_bullet);
  bullet.image_angle = image_angle;
  bullet.speed = 15;
  bullet.direction = image_angle;
  audio_play_sound(snd_shoot, 0, 0);
}
