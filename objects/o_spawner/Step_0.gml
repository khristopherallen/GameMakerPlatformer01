/// @description Spawn Enemies

if !instance_exists(o_enemy) {
	audio_play_sound(a_enemy_create, 5, false);
	repeat (wave_) {
		instance_create_layer(x, y, "Instances", o_enemy);
	}
	wave_ += 1;
		if wave_ == 5 {
		room_goto(r_one1)
	}
}