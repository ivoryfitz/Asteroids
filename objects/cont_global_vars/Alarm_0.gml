///@description Difficulty Increaser - triggered in cont_spawner
global.clears++;

//Every 1 clear, bump min AND max speed slightly to cap out at 1.5-2.5
if (global.asteroidMinSpd < global.asteroidMinSpdCap) {
  global.asteroidMinSpd += 0.1;
  if (global.asteroidMinSpd > global.asteroidMinSpdCap) {
    global.asteroidMinSpd = global.asteroidMinSpdCap;
  }
}
if (global.asteroidMaxSpd < global.asteroidMaxSpdCap) {
  global.asteroidMaxSpd += 0.1;
  if (global.asteroidMaxSpd > global.asteroidMaxSpdCap) {
    global.asteroidMaxSpd = global.asteroidMaxSpdCap;
  }
}

//Every 5 clears, increase number of asteroids
global.numAsteroids += global.clears div 5;
//Every 10 clears, increase minimum babies
global.minNumAsteroidBabies += global.clears div 10;
if (global.minNumAsteroidBabies > global.minNumAsteroidBabiesCap) {
  global.minNumAsteroidBabies = global.minNumAsteroidBabiesCap;
}
//Every 5 clears, increase maximum babies
global.maxNumAsteroidBabies += global.clears div 5;
if (global.maxNumAsteroidBabies > global.maxNumAsteroidBabiesCap) {
  global.maxNumAsteroidBabies = global.maxNumAsteroidBabiesCap;
}

