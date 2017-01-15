var numBabies = random_range(global.minNumAsteroidBabies, global.maxNumAsteroidBabies);
scr_print("Baby Spawn", "parent", id);
repeat(numBabies) {
  var baby = instance_create_layer(x, y, "Instances", obj_asteroid_s);
  baby.wrapStateX = wrapStateX;
  baby.wrapStateY = wrapStateY;
  baby.x += lengthdir_x(sprite_width - baby.sprite_width / 2, baby.direction);
  baby.y += lengthdir_y(sprite_height - baby.sprite_width / 2, baby.direction);
}

global.score += 50;