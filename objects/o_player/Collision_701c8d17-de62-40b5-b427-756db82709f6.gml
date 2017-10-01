/// @description Take damage

if invincible_ == false {
	health_ -= 1;
	instance_destroy(other);
	//Invincibility frames
	invincible_ = true;
	alarm[1] = 60;
}
instance_destroy(other);