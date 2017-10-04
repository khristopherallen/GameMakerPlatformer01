/// @description Kill the player

o_player.health_ = 0;
audio_stop_sound(a_battle);
room_restart();