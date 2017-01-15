if(isGhost) {
  scr_print("Ghost Asteroid Bullet Collision", "Ghost", id, "Real", corporealInstance);
  instance_destroy();
  instance_destroy(corporealInstance, false);
} else {
  if (variable_instance_exists(id, "ghost") && instance_exists(ghost)) {
    scr_print("Real Asteroid With Active Ghost Bullet Collision", "Real", id, "Ghost", ghost);
    instance_destroy(ghost, false);
  }
  scr_print("Real Asteroid Bullet Collision", "Real", id);
  instance_destroy();
}
with(other) instance_destroy();
audio_play_sound(snd_explosion, 0, 0);