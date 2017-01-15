while(distance_to_object(obj_player) < 200) {
  x = random(room_width);
  y = random(room_height);
}

image_speed = 0;
image_index = irandom(2);
rotationSpd = random(1);

direction = random(359);
speed = random_range(global.asteroidMinSpd, global.asteroidMaxSpd);