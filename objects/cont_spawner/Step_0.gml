if (!instance_exists(obj_asteroid)) {
  repeat(global.numAsteroids) {
    instance_create_layer(random(room_width), random(room_height), "Instances", obj_asteroid);
  }
  cont_global_vars.alarm[0] = 1;
}