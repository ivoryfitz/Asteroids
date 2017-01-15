//Either I suck at inheritance or Gamemaker does. Either way, this is
//here because I really want to do event_inherited() but that would
//execute obj_asteroid's create as well which I DON'T want soooo /shrug
event_perform_object(obj_wrapping_object, ev_create, 0);

image_speed = 0;
image_index = irandom(2);
rotationSpd = random(1);

direction = random(359);
speed = random_range(global.asteroidMinSpd, global.asteroidMaxSpd);