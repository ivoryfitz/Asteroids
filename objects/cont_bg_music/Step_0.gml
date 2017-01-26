var currentTrack = musicArray[nowPlaying];
if(!audio_is_playing(currentTrack)) {
  var nextTrack = wrapping_adder(nowPlaying, 1, 0, array_length_1d(musicArray) - 1);
  scr_print("Changing Tracks", "WasPlaying", nowPlaying, "NowPlaying", nextTrack);
  nowPlaying = nextTrack;
  
  audio_play_sound(musicArray[nowPlaying], 0.25, false);
}