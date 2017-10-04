/// @description Spawn Enemies

if !instance_exists(o_enemy) {
	audio_play_sound(a_enemy_create, 5, false);
	randomize();
	repeat (wave_) {
		instance_create_layer(random_range(0, room_width), random_range(-64, -32), "Instances", o_enemy);
	}
	wave_ += 1;
}