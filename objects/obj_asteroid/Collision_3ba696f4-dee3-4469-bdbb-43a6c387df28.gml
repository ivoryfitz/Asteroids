if (other.sprite_index == spr_player) {
  with (other) {
    var randomAngle = random(359);
    var o;
    var oOffset = 0;
    repeat (3) {
      o  = instance_create_layer(x, y, "Instances", obj_player_dead);
      o.direction = oOffset + randomAngle;
      oOffset += 120;
    }
    with (obj_player_dead) {
      image_angle = direction;
      speed = 3;
    }
  
    audio_play_sound(snd_explosion, 10, 0);
    
    instance_destroy();
    if (isGhost) {
      scr_print("Ghost Ship Asteroid Collision", "Ghost", id, "Real", corporealInstance);
      with(corporealInstance) instance_destroy();
    }
    
    scr_print("Ship Asteroid Collision", "Real", id);

    if (global.lives > 0) {
      global.lives -= 1;
      instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_player);
    } else {
      instance_create_layer(0, 0, "Instances", cont_gameover);
    }
  }
}