var numBabies = random_range(global.minNumAsteroidBabies, global.maxNumAsteroidBabies);
repeat(numBabies) {
  instance_create_layer(x, y, "Instances", obj_asteroid_s);
}

global.score += 50;