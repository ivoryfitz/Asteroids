var xOffset = lengthdir_x(sprite_xoffset, image_angle);
var yOffset = lengthdir_y(sprite_yoffset, image_angle);
var bullet = instance_create_layer(x + xOffset, y + yOffset, "Instances", obj_bullet);
bullet.image_angle = image_angle;
bullet.speed = 15;
bullet.direction = image_angle;
audio_play_sound(snd_shoot, 0, 0);
