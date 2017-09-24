/// @description Movement state

// Move force
if instance_exists(o_player) {
	var dir = point_direction(x, y, o_player.x, o_player.y);
	speed_[h] += lengthdir_x(acceleration_, dir);
	speed_[v] += lengthdir_y(acceleration_, dir);
	if point_distance(0, 0, speed_[h], speed_[v]) > max_speed_ {
		var move_dir = point_direction(0, 0, speed_[h], speed_[v]);
		speed_[h] = lengthdir_x(max_speed_, move_dir);
		speed_[v] = lengthdir_y(max_speed_, move_dir);
	}
	
	move(speed_, 1);

	if (distance_to_object(o_player) < attack_distance_) {
		enemy_fire_bullet();
	}
		
	// Death
		if health_ <= 0 {
		instance_destroy();
	}

	enemy_fire_bullet();
}