/// @description Take damage
health_ -= 1;
instance_destroy(other);

var dir = other.direction;
speed_[h] = lengthdir_x(max_speed_push_, dir);
speed_[v] = lengthdir_y(max_speed_push_, dir);