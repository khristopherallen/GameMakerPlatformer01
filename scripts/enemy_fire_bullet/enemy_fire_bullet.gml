// Create an enemy bullet
	if alarm[0] <= 0 && instance_exists(o_player){
		var dir = point_direction(x, y, o_player.x, o_player.y);
		var x_offset = lengthdir_x(16, dir);
		var y_offset = lengthdir_y(16, dir);

		var bullet = instance_create_layer(x+x_offset, y+y_offset, "instances", o_enemy_bullet) 
		bullet.direction = dir;
		bullet.image_angle = dir;
		alarm[0] = bullet_cooldown_;
		
		// Death
			if health_ <= 0 {
		instance_destroy();
	}
	}